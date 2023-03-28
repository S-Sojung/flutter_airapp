import 'package:airbnb_app/views/pages/post/home/home_banner_ani.dart';
import 'package:airbnb_app/views/pages/post/home/home_body.dart';
import 'package:airbnb_app/views/pages/post/home/home_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      )
    );
  }
}
