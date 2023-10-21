
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/share_pref_helper.dart';
import 'package:inno_shopp/src/const/service/controller/auth_controller.dart';
import 'package:inno_shopp/src/const/service/controller/profile_controller.dart';
import 'package:inno_shopp/src/screen/main_page/profile_page/edit_profile.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AccountPage extends StatelessWidget {
  AccountPage({super.key});
  final AuthController _authController =Get.put(AuthController());
  final ProfileController _profileController =Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {

    return Obx(() => Scaffold(
      appBar: _authController.isLogged.value.isEmpty ? PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: BrandColors.colorbutton,),
      ):null,
       body: _authController.isLogged.value.isEmpty ? _login(): _profile(),

    ));
  }

  _login() {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(text: "Please login with your email id and password",fontSize: 14,),
                SizedBox(height: 20,),
                GlobalButtons.buttonWidget(text: "Login",color: BrandColors.colorbutton,textColor: BrandColors.backgroundColor,
                    press: (){
                   Get.toNamed(Routes.signInScreen, );


                    }),
              ],
            ),
          ),
        ),
      );
  }

  _profile() {
    return Stack(
       children: [
         Container(
           height: Get.height,
           width: Get.width,
         ),
         Positioned(child: Container(
             height: 200,

             child: Image.asset("images/bg.jpg",height: 200,width: Get.width,fit: BoxFit.cover,))),
         Positioned(
             top: 80,
             left:50,
             right: 50,

             child: Card(
               child: Container(
                 height: 150,
                 child: Column(
                   children: [
                     Icon(Icons.perm_identity,size: 100,),
                     KText(text: _profileController.user?.name!.toString()??"")
                   ],
                 ),
               ),
             )),
         Positioned(
             top: 85,
             right:55,

             child: IconButton(onPressed: () async {


               if (_authController.isLogged.value.isNotEmpty) {
                 // Navigate to the edit profile screen.

                Get.toNamed(Routes.editProfileScreen,arguments:_profileController.user);
               } else {
                 // Navigate to the sign-in screen.
                 Get.toNamed(Routes.signInScreen,);
               }
             }, icon: Icon(Icons.edit,color: Colors.black,size: 14,))),

         Positioned(
             top: 250,
             left:20,
             right: 20,
             child: Card(
               child: Container(
                 width: Get.width,
                 child: Padding(
                   padding: const EdgeInsets.all(30),
                   child: Column(
                     children: [
                       Card(
                         color: Colors.grey[100],
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               KText(text: "My Order",fontSize: 14,fontWeight: FontWeight.bold,),
                               Icon(Icons.shopping_cart_outlined)
                             ],
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),

                       Card(
                         color: Colors.grey[100],
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               KText(text: "Change Password",fontSize: 14,fontWeight: FontWeight.bold,),
                               Icon(Icons.password)
                             ],
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Card(
                         color: Colors.grey[100],
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               KText(text: "Tearms & Conditions",fontSize: 14,fontWeight: FontWeight.bold,),
                               Icon(Icons.rule_folder)
                             ],
                           ),
                         ),
                       ),

                       SizedBox(
                         height: 10,
                       ),
                       Card(
                         color: Colors.grey[100],
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               KText(text: "Privacy Policy",fontSize: 14,fontWeight: FontWeight.bold,),
                               Icon(Icons.privacy_tip)
                             ],
                           ),
                         ),
                       ),

                       SizedBox(
                         height: 10,
                       ),

                     ],
                   ),
                 ),
               ),
             )),
         Positioned(
             top: 550,
             left:20,
             right: 20,

             child: GlobalButtons.buttonWidget(
               press: () {

                 _authController.logout();

               },

               text: "Log Out",
               textColor: Colors.white,
             ))

       ],
     );
  }
}
