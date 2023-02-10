import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
   const TitleWidget({super.key, required this.text});

   final String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(text),
    );
  }
}
