// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class XoApp extends StatefulWidget {
  const XoApp({super.key});

  @override
  State<XoApp> createState() => _XoAppState();
}

class _XoAppState extends State<XoApp> {
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  bool oTurn = true;
  int oScore = 0;
  int xScore = 0;
  int filledBoxes = 0;

  void _tapped(int index) {
    setState(() {
      if (oTurn && displayElement[index] == '') {
        displayElement[index] = 'O';
        filledBoxes++;
      } else if (!oTurn && displayElement[index] == '') {
        displayElement[index] = 'X';
        filledBoxes++;
      }
    });
    _checkWinner();
    oTurn = !oTurn;
  }

  void _checkWinner() {
    if ((displayElement[0] == displayElement[1] &&
            displayElement[0] == displayElement[2] &&
            displayElement[0] != '') ||
        (displayElement[3] == displayElement[4] &&
            displayElement[3] == displayElement[5] &&
            displayElement[3] != '') ||
        (displayElement[6] == displayElement[7] &&
            displayElement[6] == displayElement[8] &&
            displayElement[6] != '') ||
        (displayElement[0] == displayElement[3] &&
            displayElement[0] == displayElement[6] &&
            displayElement[0] != '') ||
        (displayElement[1] == displayElement[4] &&
            displayElement[1] == displayElement[7] &&
            displayElement[1] != '') ||
        (displayElement[2] == displayElement[5] &&
            displayElement[2] == displayElement[8] &&
            displayElement[2] != '') ||
        (displayElement[0] == displayElement[4] &&
            displayElement[0] == displayElement[8] &&
            displayElement[0] != '') ||
        (displayElement[2] == displayElement[4] &&
            displayElement[2] == displayElement[6] &&
            displayElement[2] != '')) {
      if (oTurn) {
        _showWinDialog('O');
      } else {
        _showWinDialog('X');
      }
    } else if (filledBoxes == 9) {
      _showDrawDialog();
    }
  }

  void increaseScore(String winner) {
    if (winner == 'O') {
      oScore++;
    } else if (winner == 'X') {
      xScore++;
    }
  }

  void alert() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are You Sure You Want to Start a New Game?"),
            actions: [
              TextButton(
                  onPressed: () {
                    _clearBoard();
                    _clearScore();
                    Navigator.pop(context);
                  },
                  child: Text("yes")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
            ],
          );
        });
  }

  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("$winner is the winner"),
            actions: [
              TextButton(
                  onPressed: () {
                    _clearBoard();
                    increaseScore(winner);
                    Navigator.pop(context);
                  },
                  child: Text("Play Again"))
            ],
          );
        });
  }

  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Draw"),
            actions: [
              TextButton(
                  onPressed: () {
                    _clearBoard();
                    Navigator.pop(context);
                  },
                  child: Text("Play Again"))
            ],
          );
        });
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayElement[i] = '';
      }
    });
    filledBoxes = 0;
  }

  void _clearScore() {
    setState(() {
      oScore = 0;
      xScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 99, 166, 166),
        body: Column(
          children: [
            Container(
                child: Text(
              "Tic Tac Toe",
              style: TextStyle(color: Colors.white, fontSize: 40),
            )),
            Container(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "$oScore",
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  TextSpan(
                      text: " : ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 217, 171, 130),
                          fontSize: 40)),
                  TextSpan(
                      text: "$xScore",
                      style: TextStyle(
                          color: Color.fromARGB(255, 24, 140, 140),
                          fontSize: 40)),
                ]),
              ),
            ),
            Container(
              child: Text(
                ". . . . . . . . . . . .",
                style: TextStyle(
                    color: Color.fromARGB(255, 217, 171, 130), fontSize: 40),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGameCell(0),
                _buildGameCell(1),
                _buildGameCell(2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGameCell(3),
                _buildGameCell(4),
                _buildGameCell(5),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildGameCell(6, isLastRow: true),
                _buildGameCell(7, isLastRow: true),
                _buildGameCell(8, isLastRow: true),
              ],
            ),
            Spacer(),
            _buildGameButton("New Game", alert),
            Spacer(),
            _buildGameButton("Reset Game", _clearBoard),
            Spacer(),
          ],
        ),
      ),
    );
  }

  // Method to build game cells
  Widget _buildGameCell(int index, {bool isLastRow = false}) {
    return InkWell(
      onTap: () {
        _tapped(index);
      },
      child: Container(
        height: 110,
        width: 100,
        decoration: BoxDecoration(
          border: Border(
            bottom: isLastRow
                ? BorderSide.none
                : BorderSide(
                    width: 7, color: Color.fromARGB(255, 217, 171, 130)),
            right: index % 3 != 2
                ? BorderSide(
                    width: 7, color: Color.fromARGB(255, 217, 171, 130))
                : BorderSide.none,
          ),
        ),
        child: Center(
          child: Text(
            displayElement[index],
            style: TextStyle(
              color: displayElement[index] == 'O'
                  ? Colors.white
                  : displayElement[index] == 'X'
                      ? Color.fromARGB(255, 24, 140, 140)
                      : Colors.black,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }

  // Method to build game buttons
  Widget _buildGameButton(String text, VoidCallback onPressed) {
    return Container(
      color: Color.fromARGB(255, 23, 133, 139),
      alignment: Alignment.center,
      height: 60,
      width: 260,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
