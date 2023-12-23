import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizing) {
        var sz = sizing.deviceScreenType;

        if (sz == DeviceScreenType.mobile) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextButton(
              onPressed: onPressed,
              child: Row(
                children: [
                  FaIcon(
                    icon,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white70),
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return TextButton(
            onPressed: onPressed,
            child: Row(
              children: [
                FaIcon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall?.apply(color: Colors.white70),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
