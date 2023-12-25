import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});
  final Color displayColor = const Color(0xffb23727);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "Councils",
          style: textTheme.displayLarge?.apply(color: displayColor),
        ),
      ],
    );
  }
}
