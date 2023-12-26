import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FrontpageBodyBackground extends StatelessWidget {
  const FrontpageBodyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    // return Image.asset(
    //   'assets/images/background.jpg',
    //   height: MediaQuery.of(context).size.height * 4,
    //   width: MediaQuery.of(context).size.width,
    //   repeat: ImageRepeat.repeatY,
    // );
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
                colors: [
              Color(0xffFD8653),
              Color(0xffFFC363),
              Color(0xffFD8653),
            ],
                // begin: FractionalOffset.topLeft,
                // end: FractionalOffset.bottomRight,
                //     stops: [
                //   0.5,
                //   1,
                // ],
                tileMode: TileMode.clamp)
            .createShader(bounds);
      },
      blendMode: BlendMode.srcOver,
      child: Image.asset(
        'assets/images/testbackground.jpg',
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
    );
  }
}
