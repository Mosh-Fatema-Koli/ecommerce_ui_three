import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/controller/splash_controller.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';


class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final _splashController=Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    _splashController.jumpPage();


    return Scaffold(

      body: Container(
        // ignore: prefer_const_constructors
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 12,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 100,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/logo.png',
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: BrandColors.colorbutton,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              KText(text: 'VERSION 1.0.1',color: BrandColors.colorbutton,fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


  }

