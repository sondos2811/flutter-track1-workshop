import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';
import 'package:workshop/widgets/starter_app_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: AppColor.white),
        ),
        backgroundColor: AppColor.black,
      ),
      backgroundColor: AppColor.bg,
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //! Remove the comment then add arguments
            Spacer(),
            StarterAppItem(
                imagePath: "assets/home/lighter.png",
                title: "Lighter App",
                routesName: RoutesName.lighterApp),
            Spacer(),
            StarterAppItem(
                imagePath: "assets/home/basket.png",
                title: "Basket App",
                routesName: RoutesName.basketApp),
            Spacer(),
            StarterAppItem(
              imagePath: "assets/home/XO.jpg",
              title: "XO App",
              routesName: RoutesName.xoApp,
            ),
            Spacer(),
            StarterAppItem(
              imagePath: "assets/home/calculator.png",
              title: "Calculator App",
              routesName: RoutesName.calculatorApp,
            ),
          ],
        ),
      )),
    );
  }
}
