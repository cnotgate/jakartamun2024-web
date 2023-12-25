import 'package:flutter/material.dart';
import 'package:jakartamun_web/_global_widgets/body_background.dart';
import 'package:jakartamun_web/registerpage/form/formsection.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';

class FormpageBody extends StatefulWidget {
  const FormpageBody({super.key});

  @override
  State<FormpageBody> createState() => _FormpageBodyState();
}

class _FormpageBodyState extends State<FormpageBody> {
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
                        FormSection(),
                      ],
                    ),
                  )
                ],
              ),
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
