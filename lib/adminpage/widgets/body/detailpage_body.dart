import 'package:flutter/material.dart';
import 'package:jakartamun_web/_global_widgets/footer.dart';
import 'package:jakartamun_web/adminpage/widgets/body/sections/sectiondetail_page.dart';

class DetailPageBody extends StatefulWidget {
  String id;
  DetailPageBody({super.key, required this.id});

  @override
  State<DetailPageBody> createState() => _DetailPageBodyState();
}

class _DetailPageBodyState extends State<DetailPageBody> {
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
    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                      colors: [
                        Color(0x33f06e34),
                        Color(0x33f55789),
                        Color(0x33fbb53b)
                      ],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      stops: [0.0, 0.5, 1.0],
                      tileMode: TileMode.clamp)
                  .createShader(bounds);
            },
            blendMode: BlendMode.dstOver,
            child: Container(
              color: const Color(0xaaf06e34),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 150,
                    ),
                    const Text(
                      "Detail Peserta",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 50,
                    ),
                    SectionDetailPage(id: widget.id),
                    Container(
                      height: 10,
                    ),
                    Center(
                      // padding: const EdgeInsets.only(left: 200),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        

                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Text(
                              'Disapprove',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Text(
                              'Approve',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: 300,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0.0,
            child: FrontpageFooter(),
          ),
        ],
      ),
    );
  }
}
