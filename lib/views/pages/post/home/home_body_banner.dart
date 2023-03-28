import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:airbnb_app/views/pages/post/home/home_banner_ani.dart';
import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: m_gap),
      child: Stack(
        children: [
          _bannerImage(),
          _buildBannerCaption(),

        ],
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container( // SizedBox는 못하지만 컨테이너는 최소크기와 최대크기 제약조건 가능
                constraints: BoxConstraints(
                  maxWidth: 350
                ),
                child: Column(
                  children: [
                    HomeBannerAni2("모두의 숙소"),
                    HomeBannerAni("이제, 여행은 가까운 곳에서"),

                    SizedBox(height: m_gap,),
                    Text(
                      "새로운 공간에 머물러 보세요. 살아보기, 출장, 여행등 다양한 목적에 맞는 숙소를 찾아보세요",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: m_gap,),
                    SizedBox(
                      height: 35,
                      width: 170,
                      child: TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                          onPressed: (){},
                          child: Text("가까운 여행지 둘러보기",style: subtitle2(),)
                      ),
                    )

                  ],
                ),
              ),
        ],
      ),
    );
  }

  Widget _bannerImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/banner.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: 320,
        ),
      );
  }
}
