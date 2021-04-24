import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidDesc extends StatefulWidget {
  @override
  _CovidDescState createState() => _CovidDescState();
}

class _CovidDescState extends State<CovidDesc> {
  final List<String> imageList = [
    "assets/images/covid.jpg",
    "assets/images/ambulance.jpg",
    "assets/images/hospital.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Covid 19 Report Description",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            e,
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.cover,
                          )
                        ],
                      )))
                  .toList(),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      " Emergency Response Systems  also known as all Emergency Response Systems, also known as Emergency Response Systems,",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.call),
                            color: Colors.white,
                            iconSize: 32.0,
                            onPressed: () {},
                          ),
                        ),
                        Text("Call Us For Emergency Services",
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              height: 170,
              width: 370.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.grey[300],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      " Emergency Response Systems  also known as all Emergency Response Systems, also known as Emergency Response Systems,",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Container(
                    color: Colors.teal,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.voice_chat),
                            color: Colors.white,
                            iconSize: 32.0,
                            onPressed: () {
                              launch('https://wa.me/9868976363');
                            },
                          ),
                        ),
                        Text("Connect Us With Whatsapp",
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              height: 170,
              width: 370.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      " Emergency Response Systems  also known as all Emergency Response Systems, also known as Emergency Response Systems,",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Container(
                    color: Colors.amber[900],
                    width: double.infinity,
                    child: Row(
                      children: [
                        Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.mail),
                            color: Colors.white,
                            iconSize: 32.0,
                            onPressed: () {
                              launch('mailto:bhandaridilli1@gmail.com');
                            },
                          ),
                        ),
                        Text("Mail Us For Emergency Services",
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              height: 170,
              width: 370.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
