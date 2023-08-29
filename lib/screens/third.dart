import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _notiFState();
}

class _notiFState extends State<third>
with TickerProviderStateMixin {
      late AnimationController  _slideLogocontrol;
      late AnimationController  _fadeTextcontroller;
      
 @override
  void initState(){

super.initState();

_slideLogocontrol=AnimationController(vsync: this,duration: Duration(milliseconds:1500 ));
_fadeTextcontroller=AnimationController(vsync: this,duration: Duration(seconds: 4));

_slideLogocontrol.forward();
_fadeTextcontroller.forward();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: FadeTransition(
            opacity: _fadeTextcontroller,
            child: Text(
              'Hot Updates',
              style: TextStyle(color: Colors.red),
            ),
          ),
        )),
      ),
      body: FadeTransition(
        opacity: _fadeTextcontroller,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,c
      
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image(image: AssetImage("image/man1.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 180.0,
              ),
              child: Text(
                "Monday, 10 May 2021",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 15, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 33),
              child: Text(
                "WHO classifies triple-mutant Covid variant from India as global health risk",
                style: TextStyle(
                    fontFamily: ' Newsreader',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 30),
              child: Text(
                "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...Read",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 14, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 143.0, left: 30),
              child: Text(
                "Published by Berkeley Lovelace Jr.",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
             SizedBox(
              height: 10,
            ),
             Image(image: AssetImage("image/womann.png")),
             SizedBox(
              height: 15,
            ),
       Padding(
              padding: const EdgeInsets.only(
                right: 180.0,
              ),
              child: Text(
                "Sunday, 9 May 2021",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 15, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 33),
              child: Text(
                "What to do if you're planning or attending a wedding during the pandemic",
                style: TextStyle(
                    fontFamily: ' Newsreader',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 30),
              child: Text(
                "They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding... Read More",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 14, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 143.0, left: 30),
              child: Text(
                "Published by Berkeley Lovelace Jr.",
                style: TextStyle(
                    fontFamily: ' Nunito', fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
