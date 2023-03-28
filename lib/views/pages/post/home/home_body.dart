import 'package:airbnb_app/views/pages/post/home/home_body_banner.dart';
import 'package:airbnb_app/views/pages/post/home/home_body_popular.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double bodyPadding=MediaQuery.of(context).size.width * 0.15;
    //그림을 다시 그릴 때 마다 다시 그려줌 : 화면의 사이즈를 이용해서 맞춰줌
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bodyPadding),
      child: Column(
        children: [
          HomeBodyBanner(),
          HomeBodyPopular(),
        ],
      ),
    );
  }
}


