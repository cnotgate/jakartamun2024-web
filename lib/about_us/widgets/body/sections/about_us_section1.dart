import 'package:flutter/material.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class AboutUsSection1 extends StatelessWidget {
  const AboutUsSection1({super.key});
  final Color displayColor = const Color(0xffb23727);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "About Us",
          style: textTheme.displayLarge?.apply(color: displayColor),
        ),
      ],
    );
  }
}
