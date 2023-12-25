import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section2_council/council_detail.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CouncilCard extends StatefulWidget {
  const CouncilCard({super.key, required this.name});
  final String name;

  @override
  State<CouncilCard> createState() => _CouncilCardState();
}

class _CouncilCardState extends State<CouncilCard> {
  final Color displayColor = const Color(0xffb23727);
  Color cardColor = const Color(0xfff3f5d8);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print("sss");
        }
        showDialog(
          context: context,
          builder: (context) => CouncilDetail(name: widget.name, desc: ''),
        );
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (e) {
          setState(() {
            cardColor = const Color(0xaaf3f5d8);
          });
        },
        onExit: (e) {
          setState(() {
            cardColor = const Color(0xfff3f5d8);
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width *
                getValueForScreenType(
                  context: context,
                  mobile: 0.35,
                  tablet: 0.17,
                  desktop: 0.13,
                ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: displayColor),
              color: cardColor,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/un-logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: textTheme.titleMedium?.apply(color: displayColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Councils {
//   Councils(this.name, this.description);
//   String name, description;
// }
