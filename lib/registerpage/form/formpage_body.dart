import 'package:flutter/material.dart';
import 'package:jakartamun_web/_global_widgets/body_background.dart';
import 'package:jakartamun_web/frontpage/widgets/body/frontpage_body_background.dart';
import 'package:jakartamun_web/registerpage/form/formsection.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FormpageBody extends StatefulWidget {
  const FormpageBody({super.key});

  @override
  State<FormpageBody> createState() => _FormpageBodyState();
}

class _FormpageBodyState extends State<FormpageBody> {
  final scrollController = ScrollController();
  final Color displayColor = Color(0xffFFFFFF);

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
          child: Stack(
            children: [
              FrontpageBodyBackground(),
              Opacity(
                opacity: 0.68,
                child: Image.asset(
                  'assets/images/testbackground.jpg',
                  height: MediaQuery.of(context).size.height *
                      getValueForScreenType(
                        context: context,
                        mobile: 5.7,
                        tablet: 3.5,
                        desktop: 3.8,
                      ),
                  width: MediaQuery.of(context).size.width,
                  repeat: ImageRepeat.repeatY,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 120),
                    child: Column(
                      children: [
                        Text(
                          'Registration Page',
                          style: getValueForScreenType(
                            context: context,
                            mobile: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.apply(color: displayColor)
                                .copyWith(
                              shadows: [
                                Shadow(
                                  blurRadius: 3.0,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            tablet: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.apply(color: displayColor)
                                .copyWith(
                              shadows: [
                                Shadow(
                                  blurRadius: 3.0,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            desktop: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.apply(color: displayColor)
                                .copyWith(
                              shadows: [
                                Shadow(
                                  blurRadius: 3.0,
                                  color: Colors.black.withOpacity(0.5),
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
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
