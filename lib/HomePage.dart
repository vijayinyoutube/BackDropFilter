import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.indigo[800],
        title: Text("BackDropFilter"),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.55),
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.treehugger.com/thmb/Rgtpa2iVTnqa97ScKlXdlP2g1Go=/1000x665/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2017__07__blue_hydrangea-0750eb1868c7465790d3c7c3f1c5f7ca.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 15,
                ),
                buildContainer(context),
                SizedBox(
                  height: 15,
                ),
                buildContainer(context),
                SizedBox(
                  height: 15,
                ),
                buildContainer(context),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildContainer(BuildContext context) {
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.treehugger.com/thmb/Rgtpa2iVTnqa97ScKlXdlP2g1Go=/1000x665/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__mnn__images__2017__07__blue_hydrangea-0750eb1868c7465790d3c7c3f1c5f7ca.jpg"),
                  radius: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BackDrop Filter",
                        //textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      Text(
                        "BackDrop Filter helps to apply filtering effect over any custom images or other Flutter Widgets",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white.withOpacity(0.25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Know more",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Icon(Icons.navigate_next_outlined)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
