
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                KText(text: "Forgot\npassword?",fontSize: 36,fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 50,
                ),
                SignUpTextField(
                  hintText: "Enter your email address",
                  prefixIcon: Icon(Icons.email),
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    KText(text: "* We will send you a message to set or reset \nyour new password",color: Colors.grey[500],fontSize: 12,textAlign:TextAlign.start,)
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GlobalButtons.buttonWidget(
                    press: (){

                    },
                    text: "Submit",textColor: Colors.white),
                SizedBox(
                  height: 60,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
