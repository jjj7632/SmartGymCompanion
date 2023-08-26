/// Home Page
/// 
/// The home page users use to naviagte the app
/// along with navigation bar
/// 
/// Author: Patricio Solis
/// Created on: Aug 26, 2023

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50,),
          Text(
            "Device Name",
            textScaleFactor: 3.5,
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "Start Workout",
              textScaleFactor: 1.5,
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              )
            ),
          )
        ]
        ),
    );
  }
}