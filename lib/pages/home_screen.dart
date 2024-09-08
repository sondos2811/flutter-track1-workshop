import 'package:flutter/material.dart';
import 'package:workshop/core/constants/colors.dart';
import 'package:workshop/core/routes/routes_name.dart';

import '../widgets/starter_app_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page',
      style: TextStyle(
        color: AppColor.white
      ),
      ),
      backgroundColor: AppColor.black,
      ),
      backgroundColor: AppColor.bg,
      body: const SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //! Remove the comment then add arguments 
          // StarterAppItem(imagePath: "home/starterApp.png", title: "Starry Eyes", routesName: RoutesName.starterAppItem), 
          // StarterAppItem(),
          // StarterAppItem(),
          // StarterAppItem(),
        ],
      ),
      )),
    );
  }
}