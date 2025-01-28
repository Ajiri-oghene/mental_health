import 'package:flutter/material.dart';
import 'package:mental/utils/color.dart';

class Emoji extends StatelessWidget {
  final String face;
  const Emoji({super.key,
  required this.face,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Text(
        face,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}