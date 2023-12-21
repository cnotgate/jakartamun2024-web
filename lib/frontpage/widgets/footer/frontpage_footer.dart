import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jakartamun_web/frontpage/widgets/footer/icon_text_button.dart';

class FrontpageFooter extends StatelessWidget {
  const FrontpageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    double screenWidth = MediaQuery.of(context).size.width;
    return ClipRect(
      child: Container(
        margin: EdgeInsets.zero,
        width: screenWidth,
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffB73227), Color(0xffdc7030)],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
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
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
