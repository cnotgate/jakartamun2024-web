import 'package:flutter/material.dart';
import 'package:jakartamun_web/adminpage/widgets/appbar/adminpage_appbar.dart';
import 'package:jakartamun_web/adminpage/widgets/body/DetailPage_body.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          DetailPageBody(),
          Positioned(
            top: 0.0,
            child: AdminPageAppbar(),
          ),
        ],
      ),
    );
  }
}
