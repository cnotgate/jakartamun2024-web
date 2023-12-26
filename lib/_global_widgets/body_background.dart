import 'package:flutter/material.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key});

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
                  Color(0x55f06e34),
                  Color(0x55f55789),
                  Color(0x55fbb53b)
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 0.5, 1.0],
                tileMode: TileMode.clamp)
            .createShader(bounds);
      },
      blendMode: BlendMode.srcOver,
      child: Opacity(
        opacity: 0.5,
        child: Image.asset(
          'assets/images/background.jpg',
          height: MediaQuery.of(context).size.height * 5,
          width: MediaQuery.of(context).size.width,
          repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}
