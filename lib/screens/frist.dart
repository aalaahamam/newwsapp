


import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/Data/cubit/Getnews/getnews_cubit.dart';
import 'package:newsapp/screens/second.dart';

class FirtScreen extends StatefulWidget {
  FirtScreen({super.key});

  @override
  State<FirtScreen> createState() => _FirtScreenState();
}

class _FirtScreenState extends State<FirtScreen> 
with TickerProviderStateMixin {
      late AnimationController  _slideLogocontrol;
      late AnimationController  _fadeTextcontroller;
      
 @override
  void initState(){

super.initState();

_slideLogocontrol=AnimationController(vsync: this,duration: Duration(milliseconds:1500 ));
_fadeTextcontroller=AnimationController(vsync: this,duration: Duration(seconds: 3));

_slideLogocontrol.forward();
_fadeTextcontroller.forward();

  }
    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
  Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => second(),
                              ));

          },
          child: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        FadeTransition(
          opacity: _fadeTextcontroller,
          child: ElevatedButton(
              onPressed: () async {
                context.read<GetNewsCubit>().getNews();
              },
              child: FadeTransition(
                opacity: _fadeTextcontroller,
                child: Text("Get Updated News"))),
        ),
        SizedBox(
          height: 30,
        ),
        BlocBuilder<GetNewsCubit, GetNewsState>(
          builder: (context, state) {
            if (state is GetnewsInitial) {
              return Center(
                child: Text("Please press the button to get news"),
              );
            } else if (state is GetNewsLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetNewsSuccess) {
              return
               Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            ' Lastes News',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 148,
                          ),
                          Text(
                            ' See All',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 11, 4, 214),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_right_alt),
                            color: Color.fromARGB(255, 11, 4, 214),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.response.articles.length,
                        itemBuilder: (context, index) {

                          
                          print(state.response.articles[index].urlToImage
                              .toString());
                          return Container(
                            margin: EdgeInsets.all(6),
                            width:
                                MediaQuery.of(context).size.width * 340 / 375,
                            height:
                                MediaQuery.of(context).size.height * 300 / 812,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(state
                                        .response.articles[index].urlToImage ??
                                    "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                                fit: BoxFit.fitWidth,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 95),
                                    Container(
                                      child: Text(
                                        state.response.articles[index].author ??
                                            "",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900,
                                            color:
                                                Color.fromARGB(255, 4, 6, 174)),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        state.response.articles[index]
                                                .description ??
                                            "",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        ' “I’m going to say this very bluntly again,” he added. “Buy them\n  only if you’re prepared to lose all your money.”',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: Text("Somethinge went wrone"),
              );
            }
          },
        ),
      ],
    ));
  }
}
