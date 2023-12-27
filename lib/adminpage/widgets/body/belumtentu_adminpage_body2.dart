import 'package:flutter/material.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';
import 'package:jakartamun_web/adminpage/widgets/body/sections/belumtentu_tablepagecombine.dart';

class AdminPageBody extends StatefulWidget {
  const AdminPageBody({super.key});

  @override
  State<AdminPageBody> createState() => _AdminPageBodyState();
}

class _AdminPageBodyState extends State<AdminPageBody> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    // return SingleChildScrollView(
    // controller: scrollController,
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
                    colors: [Color(0x33f06e34), Color(0x33f55789), Color(0x33fbb53b)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0, 0.5, 1.0],
                    tileMode: TileMode.clamp)
                .createShader(bounds);
          },
          blendMode: BlendMode.dstOver,
          child: Container(
            color: const Color(0xaaf06e34),
            constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: const Padding(
              padding: EdgeInsets.all(10),

              child: TablePageCombine(),
              // child: Column(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Container(
              //       height: 150,
              //     ),
              //     const Text(
              //       "Daftar Peserta",
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 30,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     Container(
              //       height: 50,
              //     ),

              //     Container(
              //       height: 300,
              //     )
              //   ],
              // ),
            ),
          ),
        ),
        const Positioned(
          bottom: 0.0,
          child: FrontpageFooter(),
        ),
      ],
    );
    // );
  }
}
