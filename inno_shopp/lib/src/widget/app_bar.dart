import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/share_pref_helper.dart';
import 'package:inno_shopp/src/screen/main_page/profile_page/edit_profile.dart';

import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:shared_preferences/shared_preferences.dart';


setAppBar() {
  // ignore: unnecessary_new
  return new AppBar(
    backgroundColor: HexColor("#f2f2f2"),
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(Icons.notes_rounded,color: Colors.grey,),
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    title: Center(child: Image.asset("images/logoapp_bar.png",height: 25,)),
    actions: [
      Builder(
        builder: (context) => InkWell(
          onTap: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            String? token = prefs.getString(AppConstant.token);
            print("Token:$token");

            if (token != null && token.isNotEmpty) {
              // Navigate to the edit profile screen.
              Get.toNamed(Routes.editProfileScreen);
            } else {
              // Navigate to the sign-in screen.
              Get.toNamed(Routes.signInScreen);
            }
          },
         child:  Image.asset("images/profile.png",height: 30,width: 30,),

        ),
      ),

      SizedBox(width: 10,)
    ],
    elevation: 0,
  );
}