import 'package:flutter/material.dart';
import 'package:jakartamun_web/frontpage/widgets/body/body_background.dart';
import 'package:jakartamun_web/frontpage/widgets/footer/frontpage_footer.dart';

class FrontpageBody extends StatefulWidget {
  const FrontpageBody({super.key});

  @override
  State<FrontpageBody> createState() => _FrontpageBodyState();
}

class _FrontpageBodyState extends State<FrontpageBody> {
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
    final double statusbarHeight = MediaQuery.of(context).padding.top + 12;
    return Stack(
      children: [
        SingleChildScrollView(
          controller: scrollController,
          child: const Stack(
            children: [
              BodyBackground(),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 200),
                    child: Column(
                      children: [
                        Row(
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0.0,
                child: FrontpageFooter(),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(
            'assets/images/monas.png',
            width: MediaQuery.of(context).size.width * 0.17,
          ),
        ),
      ],
    );
  }
}
