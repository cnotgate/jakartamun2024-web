import 'package:flutter/material.dart';
import 'package:jakartamun_web/AdminPage/widgets/footer/AdminPage_footer.dart';
import 'package:jakartamun_web/adminpage/widgets/body/body_background.dart';
import 'package:jakartamun_web/adminpage/widgets/body/sections/section1.dart';
import 'package:jakartamun_web/adminpage/widgets/body/sections/table.dart';
// import 'package:jakartamun_web/adminpage/widgets/footer/adminpage_footer.dart';

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

    // Setup the listener.
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          print('At the top');
        } else {
          print('At the bottom');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
      Stack(
        children: [
          SingleChildScrollView(
              controller: scrollController,
              child: Stack(children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                            colors: [
                              Color(0xaaf06e34),
                              Color(0xaaf55789),
                              Color(0xaafbb53b)
                            ],
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            stops: [0.0, 0.5, 1.0],
                            tileMode: TileMode.clamp)
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.srcOver,
                  child: Container(
                    color: Color(0xaaf06e34),
                    child: Container(
                      child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(120),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("Daftar Peserta"),
                                    Container(
                                      height: 50,
                                    ),
                                    TablePage(),
                                    Container(
                                      height: 150,
                                    )
                                  ],
                                ))
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: AdminPageFooter(),
                ),
              ])),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Image.asset(
          //     'assets/images/monas.png',
          //     width: MediaQuery.of(context).size.width * 0.25,
          //   ),
          // ),
        ],
      ),
    ]);
  }
}
