import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';




class HomeBannerAni extends StatelessWidget {
  final title;
  HomeBannerAni(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TweenAnimationBuilder(
          curve: Curves.bounceOut,
          duration: Duration(seconds: 3),
          tween: Tween<double>(begin: 10.0,end: 30.0),
          builder: (BuildContext context, double value, Widget? child){
            return Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: value,color: Colors.white));
          },
        ),
      ),
    );
  }
}

class HomeBannerAni2 extends StatelessWidget {
  final title;
  const HomeBannerAni2(this.title,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText(title),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}
