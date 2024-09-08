// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';


class StarterAppItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final RoutesName routesName;
  
  const StarterAppItem({super.key,required this.imagePath,required this.title,required this.routesName});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColor.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("home/starterApp.png"),
          Spacer(),
          Column(
            children: [
              Text("Starry Eyes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
              Text("The Weekend",
              style: TextStyle(fontSize: 18,
              color: AppColor.bg ),)
            ],
          ),
          Spacer(),
          Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.primary
            ),

            child: Icon(
              size:30,
              color: AppColor.white,
              Icons.arrow_right,
            ),
          ),
          Spacer(),
        ],
      ),

    );
  }
}