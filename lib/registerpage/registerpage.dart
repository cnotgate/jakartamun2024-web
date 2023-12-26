import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/appbar/frontpage_appbar.dart';
import 'package:jakartamun_web/registerpage/form/formpage_body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          FormpageBody(),
          Positioned(
            top: 0.0,
            child: FrontpageAppbar(),
          ),
        ],
      ),
    );
  }
}
