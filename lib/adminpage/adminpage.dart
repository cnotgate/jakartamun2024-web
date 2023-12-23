import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jakartamun_web/AdminPage/widgets/appbar/AdminPage_appbar.dart';
// import 'package:jakartamun_web/adminpage/widgets/appbar/adminpage_appbar.dart';
import 'package:jakartamun_web/adminpage/widgets/body/adminpage_body.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          // ShaderMask(
          //   shaderCallback: (Rect bounds) {
          //     return const LinearGradient(
          //             colors: [
          //               Color(0xaaf06e34),
          //               Color(0xaaf55789),
          //               Color(0xaafbb53b)
          //             ],
          //             begin: FractionalOffset.topLeft,
          //             end: FractionalOffset.bottomRight,
          //             stops: [0.0, 0.5, 1.0],
          //             tileMode: TileMode.clamp)
          //         .createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcOver,
          //   child: Container(
          //     color: const Color(0xaaf06e34),
          //     child: const AdminPageBody(),
          //   ),
          // ),
          const AdminPageBody(),
          const Positioned(
            top: 0.0,
            child: AdminPageAppbar(),
          ),
        ],
      ),
    );
  }
}
