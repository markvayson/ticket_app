import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabText = '',
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(left: Radius.circular(50))),
      child: Center(child: (Text(tabText))),
    );
  }
}
