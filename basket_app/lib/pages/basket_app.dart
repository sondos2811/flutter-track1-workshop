// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class BasketAppScreen extends StatefulWidget {
  const BasketAppScreen({super.key});

  @override
  State<BasketAppScreen> createState() => _BasketAppScreenState();
}

class _BasketAppScreenState extends State<BasketAppScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  void incrementTeamAScore(int points) {
    setState(() {
      teamAScore += points;
    });
  }

  void incrementTeamBScore(int points) {
    setState(() {
      teamBScore += points;
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 25),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffff9700),
              ),
              child: Row(
                children:[
               IconButton(
                icon: Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            
                   Text(
                  "Basketball Points Counter",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),]
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Team A",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$teamAScore",
                          style: TextStyle(fontSize: 160),
                        ),
                        Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () => incrementTeamAScore(1),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, 
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "Add 1 Point",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () => incrementTeamAScore(2),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero, 
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "Add 2 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () => incrementTeamAScore(3),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "Add 3 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 550,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Team B",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$teamBScore",
                          style: TextStyle(fontSize: 160),
                        ),
                        Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () => incrementTeamBScore(1),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "  Add 1 Point",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () => incrementTeamBScore(2),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "Add 2 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () => incrementTeamBScore(3),
                                style: ButtonStyle(
                                  shape:
                                      MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xffff9700)),
                                ),
                                child: Text(
                                  "Add 3 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: resetScores,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, 
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xffff9700)),
              ),
              child: Text(
                "Reset",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
