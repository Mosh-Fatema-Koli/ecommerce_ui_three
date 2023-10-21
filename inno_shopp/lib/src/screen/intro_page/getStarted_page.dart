
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/share_pref_helper.dart';
import 'package:inno_shopp/src/const/service/controller/splash_controller.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetStartedPage extends StatelessWidget {
   GetStartedPage({super.key});

  final _splashController=Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/get_start.png", fit: BoxFit.cover,height: Get.height,width: Get.width,),
          Positioned(
              bottom: 50,
              left: 100,
              right: 100,
              child:   Column(
            children: [
              KText(text: "You want Authentic, here you go!",fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold,textAlign: TextAlign.center,),
              SizedBox(
                height: 10,
              ),
              KText(text: "Find it here, buy it now!",color: BrandColors.lightgreyColor,),
              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(
                  press: () async {
                    _splashController.isFirstTime.value = true;
                  //  Get.offAllNamed(Routes.navBarScreen);
                    Get.offAllNamed(Routes.navBarScreen);
            // Store the boolean value in SharedPreferences
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                prefs.setBool(AppConstant.isFirstTime, _splashController.isFirstTime.value);

            // Retrieve the boolean value from SharedPreferences
                                bool? isFirstTime = prefs.getBool(AppConstant.isFirstTime);

                                print(isFirstTime);
                                



                  },
                  text: "Get Started",textColor: Colors.white)
            ],
          ))
        ],
      ),

    );
  }
}
