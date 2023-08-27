/// common Button
/// 
/// The style of button to be used for all
/// buttons in the app
/// 
/// Author: Patricio Solis
/// Created on: Aug 26, 2023

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  final String label;
  final double? textScale;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  // CommonButton Constructor
  const CommonButton({
    super.key, 
    required this.label,   // button text
    this.textScale,       // size of text in button
    this.width,           // width of button
    this.height,          // height of button
    this.onPressed        // function button calls
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 300, height ?? 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        )
      ),
      child: Text(
        label,
        textScaleFactor: textScale ?? 1.5,
      ),
    );
  }
}