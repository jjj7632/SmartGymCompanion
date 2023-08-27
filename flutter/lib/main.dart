/// Main
/// 
/// Root of the App
/// 
/// Author: Patricio Solis
/// Created on: Aug 26, 2023

import 'package:flutter/material.dart';
import 'home.dart';
import 'placeHolder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pumped',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pumped'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // List of pages bottom bar indexes correspond to (max 5)
  final List<Widget> _pages = [
    const HomePage(),
    PlaceholderWidget(color: Colors.yellow),
    PlaceholderWidget(color: Colors.green),
    PlaceholderWidget(color: Colors.blue),
    PlaceholderWidget(color: Colors.orange)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(widget.title),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
           iconSize: 20,
           selectedFontSize: 10,
           unselectedItemColor: Colors.grey,
           selectedItemColor: Colors.black,
           currentIndex: _currentIndex,
           // Listens to which index of bottom bar is tapped and changes index accordingly
           onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
           },
           items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.timeline), label: 'Data'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Workout'),
            BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Support'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
           ],
        ),
      ),
    );
  }
}

