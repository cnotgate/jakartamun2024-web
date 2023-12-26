import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterBodyBackground extends StatelessWidget {
  const RegisterBodyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *
              getValueForScreenType(
                context: context,
                mobile: 5.7,
                tablet: 3.5,
                desktop: 3.8,
              ),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffFD8653),
              Color(0xffFFC363),
              Color(0xffFD8653),
            ], tileMode: TileMode.clamp),
          ),
        ),
        Opacity(
          opacity: 0.68,
          child: Image.asset(
            'assets/images/testbackground.png',
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height *
                getValueForScreenType(
                  context: context,
                  mobile: 5.7,
                  tablet: 3.5,
                  desktop: 3.8,
                ),
            width: MediaQuery.of(context).size.width,
            repeat: ImageRepeat.repeatY,
          ),
        ),
      ],
    );
  }
}
