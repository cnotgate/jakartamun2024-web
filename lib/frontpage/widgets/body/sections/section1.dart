import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  final Color displayColor = const Color(0xffB73225);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: getValueForScreenType(
        context: context,
        mobile: MediaQuery.of(context).size.width * 0.9,
        desktop: MediaQuery.of(context).size.width * 0.75,
        tablet: MediaQuery.of(context).size.width * 0.75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: displayColor),
        gradient: const LinearGradient(
            colors: [Color(0xbbF3F4D7), Color(0xaaDF6A26), Color(0xaaE23F7E)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.2, 0.8, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SelectionArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jakarta International Model United Nations",
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.apply(color: displayColor),
                          tablet: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.apply(color: displayColor),
                          desktop: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.apply(color: displayColor),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "The Jakarta International Model United Nations (JMUN), organized by Indonesia Student Association for International Studies (ISAFIS) has earned global recognition a reputation as the leading and renowned MUN conference.",
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.apply(color: displayColor),
                          tablet: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.apply(color: displayColor),
                          desktop: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.apply(color: displayColor),
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      Text(
                        "JMUN Over the Years",
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.apply(color: displayColor),
                          tablet: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.apply(color: displayColor),
                          desktop: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.apply(color: displayColor),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "Years after it was first held. now Jakarta MUN has become one of the most prestigious events in the international MUN community, drawing over 400 delegates last year. Jakarta MUN participants do not only hail from major cities in Indonesia, but also from various countries like USA, UK, India, New Zealand, Australia, Malaysia, Singapore and many more.",
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.apply(color: displayColor),
                          tablet: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.apply(color: displayColor),
                          desktop: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.apply(color: displayColor),
                        ),
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
                                  padding: const EdgeInsets.all(20.0),
                                  side: BorderSide(
                                      width: 2.0, color: displayColor),
                                ),
                                child: Text(
                                  "About Us",
                                  style: textTheme.titleMedium
                                      ?.apply(color: displayColor),
                                ),
                              ),
                              ResponsiveBuilder(builder: (context, sizing) {
                                var sz = sizing.deviceScreenType;
                                if (sz == DeviceScreenType.mobile) {
                                  return const SizedBox(height: 10.0);
                                } else {
                                  return const SizedBox(width: 10.0);
                                }
                              }),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(
                                    getValueForScreenType(
                                        context: context,
                                        mobile: 18.0,
                                        tablet: 20.0,
                                        desktop: 20.0),
                                  ),
                                  backgroundColor: const Color(0xfff55789),
                                  side: const BorderSide(
                                      width: 2.0, color: Color(0xfff55789)),
                                ),
                                child: Text(
                                  "Register Now",
                                  style: textTheme.titleMedium
                                      ?.apply(color: Colors.white),
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
            ),
            ResponsiveBuilder(
              builder: (context, size) {
                var sz = size.deviceScreenType;

                if (sz == DeviceScreenType.desktop) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(
                      'assets/images/monas.png',
                      width: 300,
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
