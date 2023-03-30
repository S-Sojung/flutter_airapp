import 'package:airbnb_app/core/constants.dart';
import 'package:airbnb_app/core/size.dart';
import 'package:airbnb_app/core/styles.dart';
import 'package:airbnb_app/views/componenets/common_form_field.dart';
import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: m_gap),
      child: Align(
        //자기 부모 끝까지 늘어나기 때문에 정렬 가능
        alignment: screenWidth < 520 ? Alignment(0,0) : Alignment(-0.6, 0),
        // (x, ) 정중앙이 0,0 비율로 맨 왼쪽이 -1 맨 오른쪽이 1
        child: Container(
          width: 420,
          //데코레이션을 쓰면, 컨테이너의 color 속성을 쓰면 안됨.
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(l_gap),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("모두의숙소에서 숙소를 검색하세요",style: h4(),),
        SizedBox(height: xs_gap,),
        Text("혼자하는 여행에 적합한 개인실부터 여럿이 합께하는 여행에 좋은 '공간전체' 숙소까지, 모두의숙소에 다 있습니다.",style: body1(),),
        SizedBox(height: m_gap,)
      ],
    );
  }
  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: s_gap,),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
            Expanded(child: CommonFormField(prefixText: "체크아웃", hintText: "날짜 입력")),
          ],
        ),
        SizedBox(height: s_gap,),
        Row(
          children: [
            Expanded(child: CommonFormField(prefixText: "성인", hintText: "2")),
            Expanded(child: CommonFormField(prefixText: "어린이", hintText: "0")),
          ],
        ),
        SizedBox(height: m_gap,),
      ],
    );
  }
  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: () {print("submit 클릭");},
        child: Text("검색", style: subtitle1(mColor: Colors.white),),
      ),
    );
  }
}
