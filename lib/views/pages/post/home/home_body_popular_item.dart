import 'package:airbnb_app/core/constants.dart';
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final picNum;

  final popularList = ["p1.jpeg", "p2.jpeg", "p3.jpeg"];

  HomeBodyPopularItem(this.picNum);

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyPadding(context) / 3 - 5;
    return Padding(
      padding: const EdgeInsets.only(bottom: xl_gap),
      child: Container(
        constraints: BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo()
            ],
          ),
        ),
      ),
    );
  }

  Row _buildPopularItemUserInfo() {
    return Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/p1.jpeg"),
                ),
                SizedBox(width: s_gap,),
                Column(
                  children: [
                    Text("데어",style: subtitle1(),),
                    Text("한국")
                  ],
                )
              ],
            );
  }

  Column _buildPopularItemComment() {
    return Column(
              children: [
                Text(
                  "깔끔하고 다 갖춰져 있어서 좋았어요 :) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋ 화장실도 3개에요!!! 5명이서 씻는데 불편함이 없어서 좋았어요. 이불도 포근! ",
                  style: body1(),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: s_gap,
                )
              ],
            );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
            Icon(
              Icons.star,
              color: kAccentColor,
            ),
          ],
        ),
        SizedBox(
          height: s_gap,
        )
      ],
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/${popularList[picNum]}",
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: s_gap,
        )
      ],
    );
  }
}
