/// Home Page
/// 
/// The home page users use to naviagte the app
/// along with navigation bar
/// 
/// Author: Patricio Solis
/// Created on: Aug 26, 2023

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'commonButton.dart';
import 'provider.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // REPLACE THIS WITH DATA FETHCED FROM USER
  List<String> data = ["1", "2", "3"];

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text(
            "Device Name",
            textScaleFactor: 3.5,
          ),
          const SizedBox(height: 50,),
          CommonButton(
            label: "Start Workout", 
            onPressed: () {
              Provider.of<PageState>(context, listen: false)
                .setCurrentIndex(2);
            },
            ),
          const SizedBox(height: 50,),
          const DataTableTitle(),
          DataTableData(data: data)
        ]
        ),
    );
  }
}


// Data Display on Table
class DataTableData extends StatelessWidget {
  const DataTableData({
    super.key,
    required this.data,
  });

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          for(int i = 0; i < data.length; i++)
            if (i % 2 == 0)
              Container(
                color: Colors.white,
                child: ListTile(title: Text(data[i])),
              )
            else
              Container(
                color: Colors.grey,
                child: ListTile(title: Text(data[i])),
              )
        ],
      ),
    );
  }
}


/// Blue Bar Title for the Data Table
class DataTableTitle extends StatelessWidget {
  const DataTableTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6100,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          "Past Workouts",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
      )
    );
  }
}
