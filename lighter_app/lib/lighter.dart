// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});

  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> {
  bool switcher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: 
        Column(
          children:[ 
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.all(30),
                icon: Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Center(
            child: Padding(
                padding: EdgeInsets.only(top: 170),
                child: Column(
                  children: [
                    Icon(
                      Icons.lightbulb_outline_sharp,
                      size: 200,
                      color: switcher ? Colors.yellow : Colors.grey,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: switcher
                              ? Colors.red
                              : const Color.fromARGB(255, 3, 210, 10),
                        ),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                switcher = !switcher;
                              });
                            },
                            child: Text(
                              switcher ? "   off   " : "   on   ",
                              style: TextStyle(color: Colors.white, fontSize: 40),
                            )))
                  ],
                )),
          ),
          ]
        )
        );
  }
}
