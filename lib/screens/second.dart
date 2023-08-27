import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 400 / 812,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Image.asset(
                  "image/man.png",
                  height: MediaQuery.of(context).size.height,
                  width: 1300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              height:
                  MediaQuery.of(context).size.height * 438 / 812, // width: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 236, 236),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Text(
                    "LONDON — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  " Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward 20,000, only to sink as low as 3,122 a year later. ",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
              ])),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 60),
                child: SizedBox(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 290 / 375,
                      height: MediaQuery.of(context).size.height * 150 / 812,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 199, 185, 185),
                          backgroundBlendMode: BlendMode.luminosity,
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              RichText(
                                text: const TextSpan(
                                    text: 'Sunday, 9 May 2021 \n \n',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Crypto investors should be \n prepared to lose all their\n money, BOE governor says\n ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Published by Ryan Browne',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                              ),
                            ]),
                          ))),
                ),
              ),
            ],
          )
        ]));
  }
}