import 'package:flutter/material.dart';

class CouncilDetail extends StatelessWidget {
  const CouncilDetail({super.key, required this.name, required this.desc});
  final String name;
  final String desc;
  final Color displayColor = const Color(0xffb23727);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AlertDialog(
      title: Text(
        name,
        style: textTheme.displaySmall?.apply(color: displayColor),
      ),
      content: SizedBox(
        width: 400,
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing enim eu turpis egestas pretium aenean. Auctor neque vitae tempus quam pellentesque. Euismod nisi porta lorem mollis aliquam ut porttitor. Quam nulla porttitor massa id neque.",
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }
}
