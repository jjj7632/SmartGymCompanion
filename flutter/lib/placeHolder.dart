/// placeHolder page
/// 
/// Placeholder page to use for testing
/// navigation when the rest of the pages
/// haven't been implemented
/// 
/// Author: Patricio Solis
/// Created on: Aug 27, 2023

import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Page Content', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}