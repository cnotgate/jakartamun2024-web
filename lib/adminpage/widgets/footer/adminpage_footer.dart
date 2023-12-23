import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jakartamun_web/adminpage/widgets/footer/icon_text_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AdminPageFooter extends StatelessWidget {
  const AdminPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    double screenWidth = MediaQuery.of(context).size.width;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          margin: EdgeInsets.zero,
          width: screenWidth,
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x88f06e34), Color(0x88f55789)],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          padding: EdgeInsets.symmetric(vertical: statusbarHeight + 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // JAKARTAMUN
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconTextButton(
                    icon: FontAwesomeIcons.instagram,
                    text: '@jakartamun',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.squareXTwitter,
                    text: '@jakartamun',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.facebook,
                    text: 'Jakarta Model United Nations',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.linkedin,
                    text: 'Jakarta Model United Nations',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.line,
                    text: '@jakartamun',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // ISAFIS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconTextButton(
                    icon: FontAwesomeIcons.instagram,
                    text: '@isafis_official',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.squareXTwitter,
                    text: '@ISAFIS_OFFICIAL',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.facebook,
                    text: 'ISAFIS',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.linkedin,
                    text: 'contact@isafis.or.id',
                    onPressed: () {},
                  ),
                  IconTextButton(
                    icon: FontAwesomeIcons.globe,
                    text: 'isafis.or.id',
                    onPressed: () {
                      launchUrlString("https://isafis.or.id");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
