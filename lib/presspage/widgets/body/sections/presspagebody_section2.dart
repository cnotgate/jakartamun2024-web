import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/cards/press_card1.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PressPageBodySection2 extends StatelessWidget {
  const PressPageBodySection2({super.key});

  final Color displayColor = const Color(0xffb23727);

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
            colors: [Color(0xbbf3f5d8), Color(0xbbf3f5d8)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.6, 1.0],
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
                      const SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ResponsiveBuilder(
                          builder: (context, sizingInformation) {
                            var sz = sizingInformation.deviceScreenType;
                            final content = [
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                              Center(
                                  child: PressPageBodyCard1(
                                imageLink: "test",
                                title: "test",
                              )),
                            ];
                            if (sz == DeviceScreenType.desktop) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                    // child: Image.asset(
                    //   'assets/images/monas.png',
                    //   width: 300,
                    // ),
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
