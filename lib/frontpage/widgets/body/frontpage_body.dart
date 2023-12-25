import 'package:flutter/material.dart';
import 'package:jakartamun_web/_global_widgets/body_background.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section1.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';

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
    return Stack(
      children: [
        SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: const Stack(children: [
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
                            Section1(),
                          ],
                        ))
                  ]),
              Positioned(
                bottom: 0.0,
                child: FrontpageFooter(),
              ),
            ])),
        // Align(
        //   alignment: Alignment.centerRight,
        //   child: Image.asset(
        //     'assets/images/monas.png',
        //     width: MediaQuery.of(context).size.width * 0.25,
        //   ),
        // ),
      ],
    );
  }
}
