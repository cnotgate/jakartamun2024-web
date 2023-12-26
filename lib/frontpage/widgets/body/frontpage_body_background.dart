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
                colors: [Color(0x11f06e34), Color(0x11f55789), Color(0x11fbb53b)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 0.5, 1.0],
                tileMode: TileMode.clamp)
            .createShader(bounds);
      },
      blendMode: BlendMode.srcOver,
      child: Image.asset(
        'assets/images/background.jpg',
        height: MediaQuery.of(context).size.height *
            getValueForScreenType(
              context: context,
              mobile: 7.2,
              tablet: 5.0,
              desktop: 5.3,
            ),
        width: MediaQuery.of(context).size.width,
        repeat: ImageRepeat.repeatY,
      ),
    );
  }
}
