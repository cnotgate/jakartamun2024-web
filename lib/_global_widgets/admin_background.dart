import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdminBackground extends StatelessWidget {
  const AdminBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
                colors: [Color(0xaaf06e34), Color(0xaaf55789), Color(0xaafbb53b)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 0.5, 1.0],
                tileMode: TileMode.clamp)
            .createShader(bounds);
      },
      blendMode: BlendMode.srcOver,
    );
  }
}
