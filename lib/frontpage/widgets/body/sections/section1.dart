import 'dart:ui';

import 'package:flutter/material.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.white),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Ipsum",
                        style: Theme.of(context).textTheme.displayLarge?.apply(color: Colors.white),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat lacus laoreet non curabitur gravida arcu ac.",
                        style: Theme.of(context).textTheme.bodyLarge?.apply(color: Colors.white),
                      ),
                      const SizedBox(height: 32.0),
                      Text(
                        "Consectetur Adipiscing",
                        style: Theme.of(context).textTheme.displayLarge?.apply(color: Colors.white),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In iaculis nunc sed augue lacus viverra vitae.",
                        style: textTheme.bodyLarge?.apply(color: Colors.white),
                      ),
                      const SizedBox(height: 32.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.all(20.0),
                                side: const BorderSide(width: 2.0, color: Colors.white),
                              ),
                              child: Text(
                                "Our Competition",
                                style: textTheme.titleMedium?.apply(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(20.0),
                                backgroundColor: const Color(0xfff55789),
                                side: const BorderSide(width: 2.0, color: Color(0xfff55789)),
                              ),
                              child: Text(
                                "Register Now",
                                style: textTheme.titleMedium?.apply(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'assets/images/monas.png',
                    width: 300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
