import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:jakartamun_web/about_us/about_us.dart';
import 'package:jakartamun_web/adminpage/adminpage.dart';
import 'package:jakartamun_web/frontpage/frontpage.dart';
import 'package:jakartamun_web/registerpage/registerpage.dart';
import 'package:jakartamun_web/theme/custom_color.g.dart';
import 'package:jakartamun_web/theme/text_theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  // we should specify the URL strategy to use "normal" browser pathing system
  // instead of # (hash) based system .
  usePathUrlStrategy();
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1080, tablet: 700, watch: 200),
  );
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
    return MaterialApp(
      title: 'Jakarta MUN 2024',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: textTheme,
        extensions: [lightCustomColors],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Frontpage(),
        '/about-us': (context) => const AboutUs(),
        '/registration': (context) => const RegisterPage(),
        '/admin': (context) => const AdminPage(),
      },
    );
  }
}
