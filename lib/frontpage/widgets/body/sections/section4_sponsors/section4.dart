import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});
  final Color displayColor = const Color(0xffb23727);
  final Color cardColor = const Color(0xfff3f5d8);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "Our Previous Partners",
          style: getValueForScreenType(
            context: context,
            mobile: textTheme.displaySmall,
            tablet: textTheme.displayMedium,
            desktop: textTheme.displayLarge,
          )?.apply(color: displayColor),
        ),
        const SizedBox(height: 32.0),
        Card(
          color: cardColor,
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
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
              children: [
                SizedBox(
                  width: 120,
                  child: Material(
                    color: displayColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Media Partners",
                        textAlign: TextAlign.center,
                        style: textTheme.titleSmall?.apply(
                          color: cardColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Placeholder(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 64.0),
        Card(
          color: cardColor,
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: Material(
                    color: displayColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sponsors",
                        textAlign: TextAlign.center,
                        style: textTheme.titleSmall?.apply(
                          color: cardColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Placeholder(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
