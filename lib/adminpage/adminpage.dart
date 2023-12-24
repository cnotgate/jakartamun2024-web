import 'package:flutter/material.dart';
import 'package:jakartamun_web/AdminPage/widgets/appbar/AdminPage_appbar.dart';
import 'package:jakartamun_web/adminpage/widgets/body/adminpage_body.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          AdminPageBody(),
          Positioned(
            top: 0.0,
            child: AdminPageAppbar(),
          ),
        ],
      ),
    );
  }
}
