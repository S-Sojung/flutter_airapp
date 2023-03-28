import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/views/pages/post/home/home_header_appber.dart';
import 'package:airbnb_app/views/pages/post/home/home_header_form.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: header_higet,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpeg"),
              fit: BoxFit.cover
          )),
      child: Column(
        children: [HomeHeaderAppbar(), HomeHeaderForm()],
      ),
    );
  }
}
