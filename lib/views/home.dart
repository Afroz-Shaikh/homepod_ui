import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homepod/widget/bottomSheet.dart';
import 'package:homepod/widget/glassbox.dart';

import 'menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          height: MediaQuery.of(context).size.height,
          // print(height);
          width: MediaQuery.of(context).size.width,
          child: Stack(
            // fit: BoxFit.cover,
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 30,
                    sigmaY: 30,
                  ),
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          child: Container(
                            height: 100,
                            // width:,
                            // color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap:  (){
                                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MenuScreen()),
  );
                                  },
                                  // () =>showModalBottomSheet(context: context, builder: (context)=> buildSheet(),),
                                  child: Image.asset(
                                    'assets/menu.png',
                                    fit: BoxFit.scaleDown,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                                Image.asset('assets/apple.png'),
                                Image.asset(
                                  'assets/search.png',
                                  fit: BoxFit.scaleDown,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          // color: Colors.brown,
                          child: Center(
                            child: Image.asset(
                              'assets/homepod.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GlassBox(
                                height: 120,
                                width: 150,
                                child1: Container(
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.volume_up_rounded,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Volume',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 35,
                                        ),
                                        LinearProgressIndicator(
                                          backgroundColor: Colors.grey,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Colors.white,
                                          ),
                                          // valueColor: Colors.white,
                                          value: 0.6,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            // GlassBox(height: 120, width: 150, child1: Container(
                            //   // color: Colors.red,
                            //   child: Text('Afroz'),

                            // )
                            // )

                            GlassBox(
                                height: 120,
                                width: 150,
                                child1: Container(
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.link_rounded,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              'Bedroom ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'HomePod Playing Now',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GlassBox(
                            height: 180,
                            width: 350,
                            child1: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30,),
                                  Row(
                                    children: [
                                      SizedBox(width: 25,),
                                      Image.asset('assets/music.png'),
                                      SizedBox(width: 15,),
                                      Text(
                                        'Now PLaying ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height:10),
                                  Padding(
                                    padding: const EdgeInsets.only(left:62.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Mokingbird - Eminem',
                                        style: TextStyle(
                                            color: Color(0xff888888),
                                            fontWeight: FontWeight.w500,fontSize: 20),

                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: LinearProgressIndicator(
                                            backgroundColor: Colors.white,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Colors.lightBlue,
                                            ),
                                            // valueColor: Colors.white,
                                            value: 0.6,
                                          ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     
                                      Icon(Icons.navigate_before,color: Colors.white,size: 30,),
                                      Icon(Icons.pause,color: Colors.white,size: 30,),
                                       Icon(Icons.navigate_next,color: Colors.white,size: 30,),
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1, 0),
                child: Image.asset(
                  'assets/blue.png',
                  filterQuality: FilterQuality.low,
                ),
              ),
              Align(
                alignment: Alignment(1, -1),
                child: Image.asset('assets/green.png'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/pink.png',
                ),
              )
            ],
          )),
    );
  }
}
