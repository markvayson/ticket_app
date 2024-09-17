import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String btmText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.btmText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
          text: topText,
          isColor: isColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          text: btmText,
          isColor: isColor,
        ),
      ],
    );
  }
}
