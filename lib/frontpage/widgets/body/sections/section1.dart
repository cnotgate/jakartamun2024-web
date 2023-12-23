import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: getValueForScreenType(
        context: context,
        mobile: MediaQuery.of(context).size.width * 0.8,
        desktop: MediaQuery.of(context).size.width * 0.65,
        tablet: MediaQuery.of(context).size.width * 0.75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.white),
        gradient: const LinearGradient(
            colors: [Color(0x44fbb53b), Color(0x44f55789)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
            stops: [0.3, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
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
                          "Lorem Ipsum",
                          style: getValueForScreenType(
                            context: context,
                            mobile: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.apply(color: Colors.white),
                            tablet: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.apply(color: Colors.white),
                            desktop: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.apply(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat lacus laoreet non curabitur gravida arcu ac.",
                          style: getValueForScreenType(
                            context: context,
                            mobile:
                                Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
                            tablet:
                                Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
                            desktop:
                                Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        Text(
                          "Consectetur Adipiscing",
                          style: getValueForScreenType(
                            context: context,
                            mobile: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.apply(color: Colors.white),
                            tablet: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.apply(color: Colors.white),
                            desktop: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.apply(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In iaculis nunc sed augue lacus viverra vitae.",
                          style: getValueForScreenType(
                            context: context,
                            mobile:
                                Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
                            tablet:
                                Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
                            desktop:
                                Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 32.0),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: ResponsiveBuilder(
                            builder: (context, sizingInformation) {
                              var sz = sizingInformation.deviceScreenType;
                              if (sz == DeviceScreenType.desktop) {
                                return Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.all(20.0),
                                        side: const BorderSide(width: 2.0, color: Colors.white),
                                      ),
                                      child: Text(
                                        "Our Competition",
                                        style: textTheme.titleMedium?.apply(color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(20.0),
                                        backgroundColor: const Color(0xfff55789),
                                        side:
                                            const BorderSide(width: 2.0, color: Color(0xfff55789)),
                                      ),
                                      child: Text(
                                        "Register Now",
                                        style: textTheme.titleMedium?.apply(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        padding: const EdgeInsets.all(20.0),
                                        side: const BorderSide(width: 2.0, color: Colors.white),
                                      ),
                                      child: Text(
                                        "Our Competition",
                                        style: textTheme.titleMedium?.apply(color: Colors.white),
                                      ),
                                    ),
                                    const SizedBox(height: 12.0),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(20.0),
                                        backgroundColor: const Color(0xfff55789),
                                        side:
                                            const BorderSide(width: 2.0, color: Color(0xfff55789)),
                                      ),
                                      child: Text(
                                        "Register Now",
                                        style: textTheme.titleMedium?.apply(color: Colors.white),
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
