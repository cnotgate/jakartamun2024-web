import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FrontpageAppbar extends StatefulWidget {
  const FrontpageAppbar({super.key});

  @override
  State<FrontpageAppbar> createState() => _FrontpageAppbarState();
}

class _FrontpageAppbarState extends State<FrontpageAppbar> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    double screenWidth = MediaQuery.of(context).size.width;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          margin: EdgeInsets.zero,
          width: screenWidth,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(
            vertical: statusbarHeight,
            horizontal: 20,
          ),
          decoration: const BoxDecoration(
            // color: Color(0x99dc7030),
            gradient: LinearGradient(
                colors: [Color(0xccdc7030), Color(0xccFFBC5D), Color(0xccdc7030)],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                stops: [0.2, 0.5, 0.8],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Image.asset(
                          'assets/images/jmun-logo.png',
                          isAntiAlias: true,
                          height: getValueForScreenType(
                            context: context,
                            mobile: 55,
                            tablet: 65,
                            desktop: 75,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/jmun2024-title.svg',
                            height: getValueForScreenType(
                              context: context,
                              mobile: 35,
                              tablet: 45,
                              desktop: 50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ResponsiveBuilder(builder: (context, sizing) {
                    var sz = sizing.deviceScreenType;

                    if (sz == DeviceScreenType.desktop) {
                      return Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/about-us');
                            },
                            child: Text(
                              'About Us',
                              style: Theme.of(context).textTheme.titleMedium?.apply(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Councils',
                              style: Theme.of(context).textTheme.titleMedium?.apply(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Registration',
                              style: Theme.of(context).textTheme.titleMedium?.apply(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Press',
                              style: Theme.of(context).textTheme.titleMedium?.apply(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            expand = !expand;
                          });
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white70,
                          size: 26.0,
                        ),
                      );
                    }
                  })
                ],
              ),
              Builder(
                builder: (context) {
                  if (expand) {
                    return Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'About Us',
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Competition',
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Registration',
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Press',
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
