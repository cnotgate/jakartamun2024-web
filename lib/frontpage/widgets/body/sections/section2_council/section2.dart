import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section2_council/council_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});
  final Color displayColor = const Color(0xffb23727);
  final councils = const [
    'Press\nCouncil',
    'WHO\n',
    'UN Women\n',
    'UNDP\n',
    'WTO\n',
    'ASEAN\n',
    'COP 28\n',
    'UNSC\n',
    'ISA\n',
    'Crisis\nCommittee',
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Councils",
          style: getValueForScreenType(
            context: context,
            mobile: textTheme.displaySmall,
            tablet: textTheme.displayMedium,
            desktop: textTheme.displayLarge,
          )?.apply(color: displayColor),
        ),
        const SizedBox(height: 16.0),
        ResponsiveBuilder(builder: (context, sizing) {
          var sz = sizing.deviceScreenType;
          if (sz == DeviceScreenType.mobile) {
            return Column(
              children: [
                Row(children: [CouncilCard(name: councils[0]), CouncilCard(name: councils[1])]),
                Row(children: [CouncilCard(name: councils[2]), CouncilCard(name: councils[3])]),
                Row(children: [CouncilCard(name: councils[4]), CouncilCard(name: councils[5])]),
                Row(children: [CouncilCard(name: councils[6]), CouncilCard(name: councils[7])]),
                Row(children: [CouncilCard(name: councils[8]), CouncilCard(name: councils[9])]),
              ],
            );
          } else {
            return Column(
              children: [
                Row(children: [
                  CouncilCard(name: councils[0]),
                  CouncilCard(name: councils[1]),
                  CouncilCard(name: councils[2]),
                  CouncilCard(name: councils[3]),
                  CouncilCard(name: councils[4]),
                ]),
                Row(children: [
                  CouncilCard(name: councils[5]),
                  CouncilCard(name: councils[6]),
                  CouncilCard(name: councils[7]),
                  CouncilCard(name: councils[8]),
                  CouncilCard(name: councils[9]),
                ]),
              ],
            );
          }
        })
      ],
    );
  }
}
