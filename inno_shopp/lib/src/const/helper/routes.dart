

import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/all_product/offer_products.dart';
import 'package:inno_shopp/src/screen/all_product/recent_product.dart';
import 'package:inno_shopp/src/screen/auth/login.dart';
import 'package:inno_shopp/src/screen/auth/registration.dart';
import 'package:inno_shopp/src/screen/intro_page/getStarted_page.dart';
import 'package:inno_shopp/src/screen/intro_page/intro_page1.dart';
import 'package:inno_shopp/src/screen/intro_page/intro_page2.dart';
import 'package:inno_shopp/src/screen/intro_page/intro_page3.dart';
import 'package:inno_shopp/src/screen/intro_page/splash.dart';
import 'package:inno_shopp/src/screen/main_page/botttom_navbaar.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/new_arrivel.dart';
import 'package:inno_shopp/src/screen/main_page/profile_page/edit_profile.dart';
import 'package:inno_shopp/src/screen/main_page/src_page/search.dart';

class Routes{

  static String splashScreen="/splash_screen";
  static String onBoard_one="/one_board";
  static String onBoard_two="/two_board";
  static String onBoard_three="/three_board";
  static String letsGetStarts='/lets_get_starts';
  static String signUpScreen="/sign_up_screen";
  static String signInScreen="/sign_in_screen";
  static String navBarScreen="/nav_bar_screen";

  static String editProfileScreen="/profile_edit";

  static String searchScreen="/search_screen";
  static String recentProductScreen="/recent_product_screen";
  static String newArrivalProductScreen="/new_arrival_screen";
  static String offerProductScreen="/offer_product_screen";

  static String cartScreen="/cart_screen";
  static String paymentScreen="/payment_screen";
  static String checkScreen="/checkout_screen";



}

List<GetPage> pages=[

  GetPage(name: Routes.splashScreen, page:()=>  SplashPage(),transition: Transition.fade),
  GetPage(name: Routes.onBoard_one, page:()=>  IntroPageOne(),transition: Transition.fade),
  GetPage(name: Routes.onBoard_two, page:()=>  IntroPageTwo(),transition: Transition.fade),
  GetPage(name: Routes.onBoard_three, page:()=>  IntroPageThree(),transition: Transition.fade),
  GetPage(name: Routes.letsGetStarts, page: ()=> GetStartedPage(),transition: Transition.fade),

  GetPage(name: Routes.signUpScreen, page: ()=> RegistrationPage(),transition: Transition.fade),
  GetPage(name: Routes.signInScreen, page: ()=> LoginPage() ,transition: Transition.fade),
  GetPage(name: Routes.navBarScreen, page: ()=> BottomNavBar(),transition: Transition.fade),

  GetPage(name: Routes.editProfileScreen, page: ()=> ProfileEditPage(),transition: Transition.fade),
  GetPage(name: Routes.searchScreen, page: ()=> SearchPage(),transition: Transition.fade),

  GetPage(name: Routes.recentProductScreen, page: ()=> RecentProduct(),transition: Transition.fade),
  GetPage(name: Routes.newArrivalProductScreen, page: ()=> NewarrivelProduct(),transition: Transition.fade),
  GetPage(name: Routes.offerProductScreen, page: ()=> OfferProduct(),transition: Transition.fade),

  GetPage(name: Routes.cartScreen, page: ()=> RecentProduct(),transition: Transition.fade),
  GetPage(name: Routes.paymentScreen, page: ()=> NewarrivelProduct(),transition: Transition.fade),
  GetPage(name: Routes.checkScreen, page: ()=> OfferProduct(),transition: Transition.fade),




];