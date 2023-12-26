import 'package:flutter/material.dart';

class MyPaginatedGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyPaginatedGridView> {
  Future<List<String>> fetchData() async {
    // Simulating asynchronous data fetching
    await Future.delayed(const Duration(seconds: 2));

    // Replace this with your actual data fetching logic
    return List.generate(500, (index) => 'Item $index');
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return FutureBuilder<List<String>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final fetchDataList = snapshot.data!;

          return Column(
            children: [
              Expanded(
                // width: 800,
                // height: 500,
                child: PageView.builder(
                    controller: controller,
                    itemCount: (fetchDataList.length / 44).ceil(),
                    itemBuilder: ((context, x_axis) {
                      return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 5.5,
                                  mainAxisSpacing: 10),
                          itemCount: 44,
                          itemBuilder: ((context, y_axis) {
                            if ((y_axis + 1) + (x_axis * 44) <=
                                fetchDataList.length) {
                              return Text(
                                  "anjingg ${(y_axis + 1) + (x_axis * 44)}");
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
