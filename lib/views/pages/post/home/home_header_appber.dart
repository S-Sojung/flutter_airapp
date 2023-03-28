import 'package:airbnb_app/core/constants.dart';
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),
          _menu()
        ],
      ),
    );
  }

  Widget _menu() {
    return Row(
        children: [
          // TextButton(onPressed: () {}, child: Text("회원가입")),
          InkWell(
              // 디자인을 망가뜨리지 않고 버튼화 시켜줌
              onTap: () {},
              child: Text("회원가입",style: subtitle1(mColor: Colors.white),)
          ),
          SizedBox(width: m_gap,),
          InkWell(
              onTap: () {},
              child: Text("로그인",style: subtitle1(mColor: Colors.white))
          ),

        ],
      );
  }

  Widget _logo() {
    return Row(
        children: [
          Image.asset("assets/logo.png",width: 30,height: 30,color: kAccentColor),
          SizedBox(width: s_gap,),
          Text("Airbnb",style: h5(mColor: Colors.white,)),
        ]
      );
  }
}
