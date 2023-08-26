/// Home Page
/// 
/// The home page users use to naviagte the app
/// along with navigation bar
/// 
/// Author: Patricio Solis
/// Created on: Aug 26, 2023

import 'package:flutter/material.dart';
import 'commonButton.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Text(
            "Device Name",
            textScaleFactor: 3.5,
          ),
          SizedBox(height: 50,),
          CommonButton(label: "Start Workout")
        ]
        ),
    );
  }
}
