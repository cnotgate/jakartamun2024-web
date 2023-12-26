import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jakartamun_web/adminpage/adminpage.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AdminPageAppbar extends StatefulWidget {
  const AdminPageAppbar({super.key});

  @override
  State<AdminPageAppbar> createState() => _AdminPageAppbarState();
}

class _AdminPageAppbarState extends State<AdminPageAppbar> {
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
            gradient: LinearGradient(
                colors: [Color(0x00f06e34), Color(0x00f55789)],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                stops: [0.0, 1.0],
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
                        onPressed: () {},
                        child: Image.asset(
                          'assets/images/jmun-logo.png',
                          isAntiAlias: true,
                          height: getValueForScreenType(
                            context: context,
                            mobile: 60,
                            tablet: 65,
                            desktop: 75,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/jmun2024-title.svg',
                            height: getValueForScreenType(
                              context: context,
                              mobile: 40,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AdminPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Daftar Peserta',
                              style: Theme.of(context).textTheme.titleMedium?.apply(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: const Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AdminPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Daftar Peserta',
                            style: Theme.of(context).textTheme.titleMedium?.apply(
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
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
