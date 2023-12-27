import 'package:flutter/material.dart';
import 'package:jakartamun_web/presspage/widgets/cards/press_card1.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyPaginatedGridView extends StatefulWidget {
  const MyPaginatedGridView({super.key});

  @override
  MyGridViewState createState() => MyGridViewState();
}

class MyGridViewState extends State<MyPaginatedGridView> {
  Future<List<String>> fetchData() async {
    // Simulating asynchronous data fetching
    await Future.delayed(const Duration(seconds: 2));

    // Replace this with your actual data fetching logic
    return List.generate(50, (index) => 'Item $index');
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    int numberOfCards =
        getValueForScreenType(context: context, mobile: 15, tablet: 28, desktop: 20);
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
                  itemBuilder: ((context, xAxis) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: getValueForScreenType(
                              context: context, mobile: 1, tablet: 2, desktop: 2),
                          childAspectRatio: 6,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 40),
                      itemCount: numberOfCards,
                      itemBuilder: ((context, yAxis) {
                        if ((yAxis + 1) + (xAxis * numberOfCards) <= fetchDataList.length) {
                          return const PressPageBodyCard1(
                            imageLink: '',
                            title: '',
                          );
                        } else {
                          return Container();
                        }
                      }),
                    );
                  }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ElevatedButton(
                  //   onPressed: () {
                  //     controller.previousPage(
                  //       duration: const Duration(milliseconds: 500),
                  //       curve: Curves.easeInOut,
                  //     );
                  //   },
                  //   child: const Text('Previous'),
                  // ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff6D261F), // Background color
                        foregroundColor: Colors.white, // Text and icon color
                        elevation: 5, // Shadow elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Rounded corners
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // Button padding
                      ),
                      child: Text(
                        'Previous',
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                          tablet: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                          desktop: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     controller.nextPage(
                  //       duration: const Duration(milliseconds: 500),
                  //       curve: Curves.easeInOut,
                  //     );
                  //   },
                  //   child: const Text('Next'),
                  // ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff6D261F), // Background color
                        foregroundColor: Colors.white, // Text and icon color
                        elevation: 5, // Shadow elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Rounded corners
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // Button padding
                      ),
                      child: Text(
                        'Next',
                        style: getValueForScreenType(
                          context: context,
                          mobile: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                          tablet: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                          desktop: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 20, color: const Color(0xffF8F9E7)),
                        ),
                      ),
                    ),
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
