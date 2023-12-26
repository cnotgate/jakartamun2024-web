import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/belumtentu_presspagebody_section2.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/test.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class PressPageBodySection1 extends StatelessWidget {
  const PressPageBodySection1({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "Press",
          style: textTheme.displayLarge?.apply(color: Colors.white),
        ),
PressPageBodySection2()
      ],
    );
  }
}
