import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section1_jmun/section1.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section2_council/section2.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section3_prev_speaker/section3.dart';

import 'frontpage_body_background.dart';

class FrontpageBody extends StatefulWidget {
  const FrontpageBody({super.key});

  @override
  State<FrontpageBody> createState() => _FrontpageBodyState();
}

class _FrontpageBodyState extends State<FrontpageBody> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    return SelectionArea(
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            const FrontpageBodyBackground(),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120),
                  child: Column(
                    children: [
                      const Section1(),
                      const SizedBox(
                        height: 96.0,
                      ),
                      const Section2(),
                      const SizedBox(
                        height: 96.0,
                      ),
                      Section3(),
                    ],
                  ),
                )
              ],
            ),
            const Positioned(
              bottom: 0.0,
              child: FrontpageFooter(),
            ),
          ],
        ),
      ),
    );
  }
}
