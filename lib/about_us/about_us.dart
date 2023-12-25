import 'package:flutter/material.dart';
import 'package:jakartamun_web/about_us/widgets/body/about_us_body.dart';

import '../frontpage/widgets/appbar/frontpage_appbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AboutUsBody(),
          const Positioned(
            top: 0.0,
            child: FrontpageAppbar(),
          ),
        ],
      ),
    );
  }
}
