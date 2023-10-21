import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/app_theme.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/field.dart';
import 'package:inno_shopp/src/screen/intro_page/splash.dart';
import 'package:inno_shopp/src/screen/main_page/botttom_navbaar.dart';
import 'package:inno_shopp/src/screen/product/productsDetails.dart';
import 'package:inno_shopp/src/screen/women/dress/dress_items.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //  designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
        return  GetMaterialApp(
      title: 'Inno Shop',
     //  darkTheme: darkThemeData(context),
     //  theme: lightThemeData(context),
     // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      getPages: pages,

      initialRoute: Routes.splashScreen,
      //  home: ProductsDetailes(),

    );
        });
  }
}

