import 'package:flutter/material.dart';

/// Flutter code sample for [PageView].

void main() => runApp(const PageViewExampleApp());

class PageViewExampleApp extends StatelessWidget {
  const PageViewExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('PageView Sample')),
        body: const PageViewExample(),
      ),
    );
  }
}

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    int jumlahData = 50;
    return PageView.builder(
        controller: controller,
        itemCount: (jumlahData / 44).ceil(),
        itemBuilder: ((context, x_axis) {
          return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5.5,
                  mainAxisSpacing: 10),
              itemCount: 44,
              itemBuilder: ((context, y_axis) {
                if ((y_axis + 1) + (x_axis * 44) <= jumlahData) {
                  return Text(
                      "anjingg ${y_axis + 1} + ${x_axis * 44} == ${(y_axis + 1) + (x_axis * 44)}");
                }
              }));

          ;
        }));
  }
}
