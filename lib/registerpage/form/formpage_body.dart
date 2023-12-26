import 'package:flutter/material.dart';
import 'package:jakartamun_web/registerpage/form/formsection.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../register_body_background.dart';

class FormpageBody extends StatefulWidget {
  const FormpageBody({super.key});

  @override
  State<FormpageBody> createState() => _FormpageBodyState();
}

class _FormpageBodyState extends State<FormpageBody> {
  final scrollController = ScrollController();
  final Color displayColor = const Color(0xffFFFFFF);

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
              const RegisterBodyBackground(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 120),
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
                                  offset: const Offset(2.0, 2.0),
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
                                  offset: const Offset(2.0, 2.0),
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
                                  offset: const Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const FormSection(),
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
      ],
    );
  }
}
