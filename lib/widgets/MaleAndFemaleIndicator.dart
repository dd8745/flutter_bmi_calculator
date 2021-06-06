import 'package:flutter/material.dart';

import '../constants.dart';

class MaleAndFemaleIndicator extends StatelessWidget {
  final String text;
  final IconData icons;

  MaleAndFemaleIndicator({required this.text, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
