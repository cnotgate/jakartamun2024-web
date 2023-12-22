import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FrontpageAppbar extends StatelessWidget {
  const FrontpageAppbar({super.key});

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
          padding: EdgeInsets.symmetric(vertical: statusbarHeight, horizontal: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x00f06e34), Color(0x00f55789)],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'assets/images/jmun-logo.png',
                      isAntiAlias: true,
                      height: 75,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/images/jmun2024-title.svg', height: 50),
                    ),
                  ),
                ],
              ),
              Row(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
