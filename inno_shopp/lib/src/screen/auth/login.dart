
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/controller/auth_controller.dart';
import 'package:inno_shopp/src/screen/auth/forget_pass.dart';
import 'package:inno_shopp/src/screen/auth/registration.dart';
import 'package:inno_shopp/src/screen/main_page/botttom_navbaar.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
   final _authController = Get.put(AuthController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(

        preferredSize: Size.fromHeight(0.0),
        child:  AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: BrandColors.colorbutton,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                KText(text: "Welcome \nBack!",fontSize: 36,fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 40,
                ),
                SignUpTextField(
                  hintText: "Email",
                 controller:  _authController.emailController.value
        ,
                 prefixIcon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 10,
                ),
                TextboxWidget(controller: _authController.passController.value,
                  hintText: "Password",
                  isPassword: true,

                ),
                GestureDetector(
                  onTap: (){
                    Get.to(ForgetPassPage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     KText(text: "Forgot Password?",color: Colors.pink,fontSize: 12,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GlobalButtons.buttonWidget(
                    press: (){
                      _authController.login();
                    },
                    text: "Log In",textColor: Colors.white),
                SizedBox(
                  height: 60,
                ),

             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 KText(text: "- OR Continue with -",color: Colors.grey[500],fontSize: 12,),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(5),
                       child: Image.asset("images/Google.png",height: 50,width: 50,),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(5),
                       child: Image.asset("images/apple.png",height: 50,width: 50,),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(5),
                       child: Image.asset("images/facebook.png",height: 50,width: 50,),
                     )
                   ],
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     KText(text: "Create An Account ",color: Colors.grey[500],fontSize: 12,),
                     GestureDetector(
                         onTap: (){
                           Get.to(RegistrationPage());
                         },
                         child: KText(text: " Sign Up",color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold,)),
                   ],
                 ),
               ],
             )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
