import 'package:emergencyresponse/widgets/accident_desc.dart';
import 'package:emergencyresponse/widgets/covid_desc.dart';
import 'package:emergencyresponse/widgets/desaster.desc.dart';
import 'package:emergencyresponse/widgets/fight_desc.dart';
import 'package:emergencyresponse/widgets/fire_desc.dart';
import 'package:emergencyresponse/widgets/sick_desc.dart';
import 'package:flutter/material.dart';

// import 'grildlist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 300),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 40.0),
          Container(
            // color: Colors.red,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        }),
                Column(
                  children: [
                    Text(
                      'Emergency Response system',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.red),
                        Text('Dhangadhi sub-metropolitan kailali'),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/nepal.png"),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/fire.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50.0,
                              child: ElevatedButton(
                                  child: Text("Fire Report..."),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FireDesc()),
                                    );
                                  }),
                            )
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.amber,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/fight.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  child: Text("Fight & theif Report"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FightDesc()),
                                    );
                                  },
                                ))
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                    ],
                  ),
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sick.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  child: Text("Sick Report"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SickDesc()),
                                    );
                                  },
                                ))
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/accident.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  child: Text("Accident Report"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AccidentDesc()),
                                    );
                                  },
                                ))
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                    ],
                  ),
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/natural.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  child: Text("Natural Desasters Report"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DesasterDesc()),
                                    );
                                  },
                                ))
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/covid.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              // color: Colors.blue,
                              width: double.infinity,
                            ),
                            Container(
                                width: double.infinity,
                                height: 50.0,
                                child: ElevatedButton(
                                  child: Text("Covid 19 Report"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CovidDesc()),
                                    );
                                  },
                                ))
                          ],
                        ),
                        height: 200,
                        width: 200,
                        // color: Colors.red,
                      ),
                    ],
                  ),
                  height: 200,
                ),
              ],
            ),
            // height: 700,
            width: double.infinity,
            // color: Colors.blue,
          )

          // Container(
          //   child: Column(
          //     children: [
          //       Container(
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Container(height: 200, width: 185.0, color: Colors.blue),
          //             Container(height: 200, width: 185.0, color: Colors.blue),
          //           ],
          //         ),
          //         height: 300.0,
          //       ),
          //       Container(
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             Container(height: 200, width: 185.0, color: Colors.blue),
          //             Container(height: 200, width: 185.0, color: Colors.blue),
          //           ],
          //         ),
          //         height: 300.0,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
