import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:jakartamun_web/frontpage/frontpage.dart';
import 'package:jakartamun_web/theme/color_schemes.g.dart';
import 'package:jakartamun_web/theme/custom_color.g.dart';
import 'package:jakartamun_web/theme/text_theme.dart';

void main() {
  // we should specify the URL strategy to use "normal" browser pathing system
  // instead of # (hash) based system .
  usePathUrlStrategy();

  // To install Riverpod, we need to add this widget above everything else.
  // This should not be inside "MyApp" but as direct parameter to "runApp"
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
        title: 'Jakarta MUN 2024',
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
