import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class AboutUsSection1 extends StatelessWidget {
  const AboutUsSection1({super.key});
  final Color displayColor = const Color(0xffb23727);
  final Color cardColor = const Color(0xfff3f5d8);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          'About Us',
          style: getValueForScreenType(
            context: context,
            mobile: Theme.of(context)
                .textTheme
                .displaySmall
                ?.apply(color: Colors.white)
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
                ?.apply(color: Colors.white)
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
                ?.apply(color: Colors.white)
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
        const SizedBox(height: 32.0),
        Card(
          color: cardColor,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            width: MediaQuery.sizeOf(context).width *
                getValueForScreenType(
                  context: context,
                  mobile: 0.8,
                  tablet: 0.7,
                  desktop: 0.6,
                ),
            decoration: null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: displayColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Teaser Jakarta MUN 2024",
                      textAlign: TextAlign.center,
                      style: getValueForScreenType(
                              context: context,
                              mobile: textTheme.titleSmall,
                              tablet: textTheme.titleMedium,
                              desktop: textTheme.titleMedium)
                          ?.apply(color: cardColor),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Placeholder(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        Card(
          color: cardColor,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            width: MediaQuery.sizeOf(context).width *
                getValueForScreenType(
                  context: context,
                  mobile: 0.8,
                  tablet: 0.7,
                  desktop: 0.6,
                ),
            decoration: null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  color: displayColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "What is Jakarta MUN?",
                      textAlign: TextAlign.center,
                      style: getValueForScreenType(
                              context: context,
                              mobile: textTheme.titleSmall,
                              tablet: textTheme.titleMedium,
                              desktop: textTheme.titleMedium)
                          ?.apply(color: cardColor),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Placeholder(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32.0),
        Text(
          'Grand Theme',
          style: getValueForScreenType(
            context: context,
            mobile: Theme.of(context)
                .textTheme
                .displaySmall
                ?.apply(color: const Color(0xff6D261F))
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
                ?.apply(color: const Color(0xff6D261F))
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
                ?.apply(color: const Color(0xff6D261F))
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
      ],
    );
  }
}
