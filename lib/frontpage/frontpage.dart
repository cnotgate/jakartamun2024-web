import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jakartamun_web/frontpage/widgets/appbar/frontpage_appbar.dart';
import 'package:jakartamun_web/frontpage/widgets/body/frontpage_body.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({super.key});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          FrontpageBody(),
          Positioned(
            top: 0.0,
            child: FrontpageAppbar(),
          ),
        ],
      ),
    );
  }
}
