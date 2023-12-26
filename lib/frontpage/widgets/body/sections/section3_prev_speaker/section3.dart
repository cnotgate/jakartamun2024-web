import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/body/sections/section3_prev_speaker/prev_speaker_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Section3 extends StatelessWidget {
  Section3({super.key});
  final Color displayColor = const Color(0xffb23727);

  final speakers = [
    PrevSpeakerCard(
      name: 'Dr. H. Sandiaga Salahuddin Uno, B.B.A., M.B.A.',
      image: Image.asset(
        'assets/images/sandiaga-uno.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Minister of Tourism and Creative Economy',
    ),
    PrevSpeakerCard(
      name: 'Rosan Perkasa Roeslani, M.B.A., M.A.',
      image: Image.asset(
        'assets/images/rosan-roeslani.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Ambassador of Indonesia to the United States',
    ),
    PrevSpeakerCard(
      name: 'Tri Purnajaya',
      image: Image.asset(
        'assets/images/tri-purnajaya.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Director of Economic Development and Environment at the Ministry of Foreign Affairs',
    ),
    PrevSpeakerCard(
      name: 'Heru Budi Hartono, S.E., M.M.',
      image: Image.asset(
        'assets/images/heru-budi-hartono.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Acting Governor of DKI Jakarta',
    ),
    PrevSpeakerCard(
      name: 'H. E. Mohammad Iskandarsyah Derry Aman',
      image: Image.asset(
        'assets/images/derry-aman.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Permanent Representative of Republic of Indonesia to ASEAN',
    ),
    PrevSpeakerCard(
      name: 'H. E. Letjen TNI Dr. Hotmangaradja Pandjaitan (Purn.)',
      image: Image.asset(
        'assets/images/hotmangaradja.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      desc: 'Permanent Representative of the Republic of Indonesia to UNESCO 2014-2019',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          "Previous Speakers",
          style: getValueForScreenType(
            context: context,
            mobile: textTheme.displaySmall,
            tablet: textTheme.displayMedium,
            desktop: textTheme.displayLarge,
          )?.apply(color: displayColor),
        ),
        const SizedBox(height: 32.0),
        ResponsiveBuilder(builder: (context, sizing) {
          var sz = sizing.deviceScreenType;

          if (sz == DeviceScreenType.mobile) {
            return Row(
              children: [
                Column(
                  children: [
                    speakers[0],
                    speakers[2],
                    speakers[4],
                  ],
                ),
                Column(
                  children: [
                    speakers[1],
                    speakers[3],
                    speakers[5],
                  ],
                )
              ],
            );
          } else {
            return Column(
              children: [
                Row(
                  children: [
                    speakers[0],
                    speakers[1],
                    speakers[2],
                  ],
                ),
                Row(
                  children: [
                    speakers[3],
                    speakers[4],
                    speakers[5],
                  ],
                )
              ],
            );
          }
        }),
      ],
    );
  }
}
