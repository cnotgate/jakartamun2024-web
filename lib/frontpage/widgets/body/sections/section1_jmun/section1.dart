import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  final Color displayColor = const Color(0xffb23727);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final stats = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "JMUN Over the Years",
          style: getValueForScreenType(
            context: context,
            mobile: Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
            tablet: Theme.of(context).textTheme.displayMedium?.apply(color: displayColor),
            desktop: Theme.of(context).textTheme.displayMedium?.apply(
                  color: getValueForScreenType(
                    context: context,
                    mobile: displayColor,
                    tablet: displayColor,
                    desktop: const Color(0xfff3f5d8),
                  ),
                ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "400+",
                  style: getValueForScreenType(
                    context: context,
                    mobile: Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
                    tablet: Theme.of(context).textTheme.displayMedium?.apply(color: displayColor),
                    desktop: Theme.of(context).textTheme.displayLarge?.apply(
                          color: getValueForScreenType(
                            context: context,
                            mobile: displayColor,
                            tablet: displayColor,
                            desktop: const Color(0xfff3f5d8),
                          ),
                        ),
                  ),
                ),
                Text(
                  "registrants",
                  style: getValueForScreenType(
                    context: context,
                    mobile: Theme.of(context).textTheme.titleSmall?.apply(color: displayColor),
                    tablet: Theme.of(context).textTheme.titleMedium?.apply(color: displayColor),
                    desktop: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(color: const Color(0xfff3f5d8)),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "18",
                  style: getValueForScreenType(
                    context: context,
                    mobile: Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
                    tablet: Theme.of(context).textTheme.displayMedium?.apply(color: displayColor),
                    desktop: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.apply(color: const Color(0xfff3f5d8)),
                  ),
                ),
                Text(
                  "countries",
                  style: getValueForScreenType(
                    context: context,
                    mobile: Theme.of(context).textTheme.titleSmall?.apply(color: displayColor),
                    tablet: Theme.of(context).textTheme.titleMedium?.apply(color: displayColor),
                    desktop: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(color: const Color(0xfff3f5d8)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );

    return Container(
      width: getValueForScreenType(
        context: context,
        mobile: MediaQuery.of(context).size.width * 0.9,
        tablet: MediaQuery.of(context).size.width * 0.85,
        desktop: MediaQuery.of(context).size.width * 0.9,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: displayColor),
        gradient: LinearGradient(
            colors: const [Color(0xfff3f5d8), Color(0xffdc7030)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: getValueForScreenType(
              context: context,
              mobile: [0.6, 1.0],
              tablet: [0.6, 1.0],
              desktop: [0.3, 0.7],
            ),
            tileMode: TileMode.clamp),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jakarta International Model United Nations",
                      style: getValueForScreenType(
                        context: context,
                        mobile: Theme.of(context).textTheme.displaySmall,
                        tablet: Theme.of(context).textTheme.displayMedium,
                        desktop: Theme.of(context).textTheme.displayLarge,
                      )?.apply(color: displayColor),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "The Jakarta International Model United Nations (JMUN), organized by Indonesia Student Association for International Studies (ISAFIS) has earned global recognition a reputation as the leading and renowned MUN conference.",
                      style: getValueForScreenType(
                        context: context,
                        mobile: Theme.of(context).textTheme.bodyMedium,
                        tablet: Theme.of(context).textTheme.bodyMedium,
                        desktop: Theme.of(context).textTheme.bodyLarge,
                      )?.apply(color: displayColor),
                    ),
                    ResponsiveBuilder(
                      builder: (context, sizing) {
                        var sz = sizing.deviceScreenType;
                        if (sz != DeviceScreenType.desktop) {
                          return Column(
                            children: [
                              const SizedBox(height: 32.0),
                              stats,
                            ],
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                    const SizedBox(height: 32.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ResponsiveBuilder(
                        builder: (context, sizingInformation) {
                          var sz = sizingInformation.deviceScreenType;
                          final content = [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(
                                  getValueForScreenType(
                                    context: context,
                                    mobile: 16.0,
                                    tablet: 17.0,
                                    desktop: 20.0,
                                  ),
                                ),
                                side: BorderSide(width: 2.0, color: displayColor),
                              ),
                              child: Text(
                                "About Us",
                                style: textTheme.titleMedium?.apply(color: displayColor),
                              ),
                            ),
                            ResponsiveBuilder(builder: (context, sizing) {
                              var sz = sizing.deviceScreenType;
                              if (sz == DeviceScreenType.desktop) {
                                return const SizedBox(width: 10.0);
                              } else {
                                return const SizedBox(height: 10.0);
                              }
                            }),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(
                                  getValueForScreenType(
                                      context: context, mobile: 16.0, tablet: 17.0, desktop: 20.0),
                                ),
                                backgroundColor: const Color(0xfff55789),
                                side: const BorderSide(width: 2.0, color: Color(0xfff55789)),
                              ),
                              child: Text(
                                "Register Now",
                                style: textTheme.titleMedium?.apply(color: Colors.white),
                              ),
                            ),
                          ];
                          if (sz == DeviceScreenType.desktop) {
                            return Row(
                              children: content,
                            );
                          } else {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: content,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ResponsiveBuilder(
                  builder: (context, size) {
                    var sz = size.deviceScreenType;

                    if (sz == DeviceScreenType.desktop) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.asset(
                          'assets/images/monas.png',
                          width: 340,
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
            Expanded(
              flex: getValueForScreenType(
                context: context,
                mobile: 0,
                tablet: 0,
                desktop: 2,
              ),
              child: ResponsiveBuilder(
                builder: (context, sizing) {
                  var sz = sizing.deviceScreenType;
                  if (sz == DeviceScreenType.desktop) {
                    return Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: stats,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
