import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      controller: scrollController,
      child: Stack(
        children: [
          ClipRect(
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [],
              ),
            ],
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
