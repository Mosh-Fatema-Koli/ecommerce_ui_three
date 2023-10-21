import 'dart:ffi';

import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/share_pref_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController{


 var isFirstTime = false.obs;


  jumpPage() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Retrieve the boolean value from SharedPreferences
    bool? isFirstTime = prefs.getBool(AppConstant.isFirstTime);
    print(isFirstTime);

    Future.delayed(const Duration(seconds: 3),(){
      if(isFirstTime == true){
         Get.offAllNamed(Routes.navBarScreen);

      }else{
        Get.offAllNamed(Routes.onBoard_one);
      }




    });
  }



}