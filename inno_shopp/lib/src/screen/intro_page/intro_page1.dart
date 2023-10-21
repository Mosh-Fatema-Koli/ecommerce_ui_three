
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/screen/auth/login.dart';
import 'package:inno_shopp/src/screen/intro_page/intro_page2.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Row(
                  children: [
                    KText(text: "1"),
                    KText(text: "/3",color: BrandColors.greyColor,)
                  ],
                ),
              GestureDetector(
                  onTap: (){
                  Get.offAllNamed(Routes.signInScreen);
                  },
                  child: KText(text: "Skip",fontWeight: FontWeight.bold,fontSize: 16,))
            ],
          ),
              )),
          Expanded(
            flex:9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset("images/intro1.png",height: 300,width: 300,),
                KText(text: "Choose Products",fontSize: 24,fontWeight: FontWeight.bold,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                  child: KText(text: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",fontSize: 12,color: BrandColors.greyColor,textAlign: TextAlign.center),
                )

              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KText(text: ""),
                    Image.asset("images/circle.png",width: 40,),
                    GestureDetector(
                        onTap: (){
                          Get.offAllNamed(Routes.onBoard_two);
                        },
                        child: KText(text: "Next",fontSize: 16,color: BrandColors.colorbutton,fontWeight: FontWeight.bold,)),
                  ],
          ),
              ))
        ],
      ),

    );
  }
}
