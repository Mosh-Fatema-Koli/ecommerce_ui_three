
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/validator.dart';
import 'package:inno_shopp/src/const/service/controller/auth_controller.dart';
import 'package:inno_shopp/src/screen/auth/login.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class RegistrationPage extends StatelessWidget {
   RegistrationPage({super.key});

   final _authController = Get.put(AuthController());
   final formKey = GlobalKey<FormState>();

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
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                KText(text: "Create an \naccount",fontSize: 36,fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 10,
                ),
                SignUpTextField(
                  controller: _authController.nameRegController.value,
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person),
                  validator: Validators.nameValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                SignUpTextField(
                  controller: _authController.emailRegController.value,
                  hintText: " Email",
                  validator: Validators.emailValidator,
                  prefixIcon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 10,
                ),
                SignUpTextField(
                  controller: _authController.phoneController.value,
                  hintText: "Phone Number",
                  prefixIcon: Icon(Icons.call),
                  validator: Validators.phoneValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                TextboxWidget(controller: _authController.passRegController.value,
                  hintText: "Password",
                  isPassword: true,

                ),
                SizedBox(
                  height: 10,
                ),

                TextboxWidget(controller: _authController.confirmPassRegController.value,
                  hintText: "Confirm Password",
                  isPassword: true,

                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    KText(text: "By clicking the Register button, you agree \nto the public offer",color: Colors.grey[500],fontSize: 12,textAlign:TextAlign.start,)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GlobalButtons.buttonWidget(
                    press: (){

                      if (formKey.currentState!.validate()) {
                        _authController.registration();
                      }

                    },
                    text: "Create Account",textColor: Colors.white),
                SizedBox(
                  height: 40,
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
                    GestureDetector(
                      onTap: (){
                       Get.toNamed(Routes.signInScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          KText(text: "I Already Have an Account ",color: Colors.grey[500],fontSize: 12,),
                          KText(text: " Login",color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold,),
                        ],
                      ),
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
