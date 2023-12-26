import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/belumtentu_presspagebody_section1.dart';
import '../../../_global_widgets/body_background.dart';
import '../../../_global_widgets/footer.dart';

class PressPageBody extends StatelessWidget {
  PressPageBody({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: const Stack(
            children: [
              BodyBackground(),
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 120),
                        child: Column(
                          children: [
                            PressPageBodySection1(),
                          ],
                        ))
                  ]),
              Positioned(
                bottom: 0.0,
                child: FrontpageFooter(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
