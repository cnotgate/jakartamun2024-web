import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/presspagebody_section2.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class PressPageBodySection1 extends StatelessWidget {
  const PressPageBodySection1({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          height: 120,
        ),
        Text(
          "Press",
          style: textTheme.displayLarge?.apply(color: Colors.white),
        ),
        const PressPageBodySection2(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Text("prev"),
        Container(width: 10,),
        Text("next")
          ],
        )

      ],
    );
  }
}
