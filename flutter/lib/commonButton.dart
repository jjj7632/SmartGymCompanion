import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  final String label;
  final double? textScale;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;


  const CommonButton({super.key, 
    required this.label, 
    this.textScale, 
    this.width, 
    this.height,
    this.onPressed
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