import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/cards/press_card1.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyPaginatedGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyPaginatedGridView> {
  Future<List<String>> fetchData() async {
    // Simulating asynchronous data fetching
    await Future.delayed(const Duration(seconds: 2));

    // Replace this with your actual data fetching logic
    return List.generate(50, (index) => 'Item $index');
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    int numberOfCards = getValueForScreenType(
        context: context, mobile: 15, tablet: 28, desktop: 20);
    return FutureBuilder<List<String>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final fetchDataList = snapshot.data!;

          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: (fetchDataList.length / numberOfCards).ceil(),
                    itemBuilder: ((context, x_axis) {
                      return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: getValueForScreenType(
                                      context: context,
                                      mobile: 1,
                                      tablet: 2,
                                      desktop: 2),
                                  childAspectRatio: 6,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 40),
                          itemCount: numberOfCards,
                          itemBuilder: ((context, y_axis) {
                            if ((y_axis + 1) + (x_axis * numberOfCards) <=
                                fetchDataList.length) {
                              return PressPageBodyCard1(
                                imageLink: '',
                                title: '',
                              );
                            }
                          }));

                      ;
                    })),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text('Previous'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text('Next'),
                  ),
                ],
              )
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
