// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = '';

  double result(String input) {
    Parser p = Parser();
    Expression exp = p.parse(input);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    return eval;
  }

  void clear() {
    setState(() {
      input = '';
    });
  }

  void delete() {
    setState(() {
      input = input.substring(0, input.length - 1);
    });
  }

  void evaluate() {
    setState(() {
      input = result(input).toString();
    });
  }

  void add(String value) {
    setState(() {
      input = input + value;
    });
  }

  void oppositesign(String value1) {
    double value = double.parse(value1);
    setState(() {
      if (value > 0) {
        input = '-$input';
      } else {
        input = input.substring(1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: Color.fromARGB(255, 30, 150, 240),
            child: Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                "Calculator",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 300,
              color: Color.fromARGB(255, 96, 99, 96),
              child: Text(
                input,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
          Row(
            children: [
              InkWell(
                onTap: () {
                  clear();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 243, 251),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "C",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  oppositesign(input);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 243, 251),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "+/-",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('%');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 243, 251),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text("%",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              InkWell(
                onTap: () {
                  delete();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 243, 251),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "DEL",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  add('7');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "7",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('8');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "8",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('9');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text("9",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              InkWell(
                onTap: () {
                  add('/');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 139, 253),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "/",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  add('4');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "4",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('5');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('6');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text("6",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              InkWell(
                onTap: () {
                  add('*');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 139, 253),
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "×",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  add('1');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('2');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('3');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text("3",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              InkWell(
                onTap: () {
                  add('-');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 139, 253),
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  add('0');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  add('.');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  evaluate();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 125, 0),
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                        right: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text("=",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              InkWell(
                onTap: () {
                  add('+');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 97.5,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 67, 139, 253),
                      border: Border(
                        top: BorderSide(width: 0.2, color: Colors.black),
                      )),
                  child: Text(
                    "+",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
