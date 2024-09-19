// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';

class StarterAppItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String routesName;

  const StarterAppItem(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.routesName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(shape: BoxShape.rectangle, color: AppColor.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.asset(imagePath, fit: BoxFit.fill,),
          ),
          Spacer(),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, routesName);
            },
            child: Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.primary),
              child: Icon(
                size: 40,
                color: AppColor.white,
                Icons.arrow_right,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
