// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.primary,
        alignment: Alignment.center,
        child: Text(
          "AIO APP",
          style: TextStyle(
              color: AppColor.white, fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
