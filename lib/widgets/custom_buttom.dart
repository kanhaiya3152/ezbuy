import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButtom({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        
      ),
    );
  }
}
