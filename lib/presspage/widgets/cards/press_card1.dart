import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PressPageBodyCard1 extends StatefulWidget {
  final String imageLink;
  final String title;

  PressPageBodyCard1({Key? key, required this.imageLink, required this.title})
      : super(key: key);

  @override
  _PressPageBodyCard1State createState() => _PressPageBodyCard1State();
}

class _PressPageBodyCard1State extends State<PressPageBodyCard1> {
  final Color displayColor = const Color(0xffb23727);

  late Future<Map<String, dynamic>> _data;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: getValueForScreenType(
        context: context,
        mobile: MediaQuery.of(context).size.width * 0.9 * 0.4,
        desktop: MediaQuery.of(context).size.width * 0.75 * 0.4,
        tablet: MediaQuery.of(context).size.width * 0.75 * 0.4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: displayColor),
        gradient: const LinearGradient(
            colors: [Color(0x10dc7030), Color(0x10dc7030)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.6, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: Image.network(
                    'https://ichef.bbci.co.uk/news/800/cpsprodpb/bdfc/live/6fd5bc30-9a7a-11ee-ae24-71cd4a861931.jpg', fit: BoxFit.cover,)),
            Expanded(
              flex: 2,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: SelectionArea(
                    child: Container(
                      height:  getValueForScreenType(
                                        context: context,
                                        mobile: 45,
                                        tablet: 40,
                                        desktop: 80),
                      child: Text(
                        'Perang Israel-Gaza: Harga perdamaian bagi Israel dan Palestina',
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.apply(color: displayColor),
                          tablet: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.apply(color: displayColor),
                          desktop: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.apply(color: displayColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            ResponsiveBuilder(
              builder: (context, size) {
                var sz = size.deviceScreenType;

                if (sz == DeviceScreenType.desktop) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 8.0),
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
