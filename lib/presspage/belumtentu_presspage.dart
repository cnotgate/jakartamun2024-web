import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/body/belumtentu_presspage_body.dart';

import '../frontpage/widgets/appbar/frontpage_appbar.dart';

class PressPage extends StatelessWidget {
  const PressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PressPageBody(),
          const Positioned(
            top: 0.0,
            child: FrontpageAppbar(),
          ),
        ],
      ),
    );
  }
}
