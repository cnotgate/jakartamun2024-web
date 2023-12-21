import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:jakartamun_web/frontpage/frontpage.dart';
import 'package:jakartamun_web/theme/color_schemes.g.dart';
import 'package:jakartamun_web/theme/custom_color.g.dart';
import 'package:jakartamun_web/theme/text_theme.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      ColorScheme lightScheme;
      ColorScheme darkScheme;

      if (lightDynamic != null && darkDynamic != null) {
        lightScheme = lightDynamic.harmonized();
        lightCustomColors = lightCustomColors.harmonized(lightScheme);

        // Repeat for the dark color scheme.
        darkScheme = darkDynamic.harmonized();
        darkCustomColors = darkCustomColors.harmonized(darkScheme);
      } else {
        // Otherwise, use fallback schemes.
        lightScheme = lightColorScheme;
        darkScheme = darkColorScheme;
      }

      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightScheme,
          textTheme: textTheme,
          extensions: [lightCustomColors],
        ),
        home: const Frontpage(),
      );
    });
  }
}
