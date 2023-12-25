import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PrevSpeakerCard extends StatefulWidget {
  const PrevSpeakerCard({super.key, required this.name, required this.image, required this.desc});
  final String name;
  final String desc;
  final Image image;

  @override
  State<PrevSpeakerCard> createState() => _PrevSpeakerCardState();
}

class _PrevSpeakerCardState extends State<PrevSpeakerCard> {
  final Color displayColor = const Color(0xffb23727);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width *
            getValueForScreenType(
              context: context,
              mobile: 0.35,
              tablet: 0.26,
              desktop: 0.18,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: displayColor),
          color: const Color(0xfff3f5d8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: widget.image,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.name}\n',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: getValueForScreenType(
                  context: context,
                  mobile: textTheme.titleMedium,
                  tablet: textTheme.titleMedium,
                  desktop: textTheme.titleMedium,
                )?.apply(color: displayColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '${widget.desc}\n\n\n',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: getValueForScreenType(
                  context: context,
                  mobile: textTheme.bodySmall,
                  tablet: textTheme.bodySmall,
                  desktop: textTheme.bodySmall,
                )?.apply(color: displayColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Councils {
//   Councils(this.name, this.description);
//   String name, description;
// }
