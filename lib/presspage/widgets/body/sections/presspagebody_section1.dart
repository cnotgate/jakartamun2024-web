import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/presspagebody_section2.dart';
import 'package:jakartamun_web/presspage/widgets/body/sections/PaginatedGridView.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class PressPageBodySection1 extends StatelessWidget {
  const PressPageBodySection1({super.key});
  final Color displayColor = const Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'Press Page',
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
        const SizedBox(height: 24.0),
        PressPageBodySection2()
      ],
    );
  }
}
