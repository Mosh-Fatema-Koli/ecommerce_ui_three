import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:inno_shopp/src/const/api/api_const.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/const/helper/share_pref_helper.dart';
import 'package:inno_shopp/src/const/service/controller/auth_controller.dart';
import 'package:inno_shopp/src/const/service/model/profile_model.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileController extends GetxController{
  final AuthController _authController =Get.put(AuthController());


  var isLoaded = false.obs;
  ProfileModel? user;

  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  final cityController = TextEditingController().obs;
  final countryController = TextEditingController().obs;
  final addressController = TextEditingController().obs;


  @override
  void onInit() {

    fatchUser();
    super.onInit();
  }


  fatchUser() async{

    try  {
      isLoaded.value = true;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString(AppConstant.token.toString())??"";
      print(token);

      final response = await http.get(Uri.parse(ApiConstant.profileApi+"${token}"));

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200 ||response.statusCode == 201) {
        var result = jsonDecode(response.body);
        user=  ProfileModel.fromJson(result);
        isLoaded.value = false;
        print(result);


      }else if(response.statusCode == 400 ||response.statusCode == 401) {

       _authController.clearSharedData();
        print(_authController.isLogged);


      }
      else{
        isLoaded.value = false;
        print("Failed");
      }


    }catch(e){
      return e;
    }
  }


  updateData() async {
    //getx update api data

    isLoaded.value = true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString(AppConstant.token.toString())??"";
    print(token);

    try {

      http.Response response = await http.put(Uri.parse(ApiConstant.profileApi),body: {

        'name':nameController.value.text,
        'email':emailController.value.text,
        'phone': phoneController.value.text,
        'city':nameController.value.text,
        'country':emailController.value.text,
        'address': phoneController.value.text,
        'token': token.toString()

      });


      if (response.statusCode == 200 || response.statusCode == 201) {

        final json = jsonDecode(response.body);

        print('data updated');
        Get.snackbar("Updated Successfully","",backgroundColor: BrandColors.colorbutton,colorText: Colors.white);
        fatchUser();
        isLoaded.value = false;
        print(json);
        Get.back();
      }
      else{
        isLoaded.value = false;
        Get.snackbar("Update Failed "," Try again",backgroundColor: BrandColors.colorbutton,colorText: Colors.white);
      }

    } catch (e) {
      print(e);
    }

  }



  deleteUserData() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString(AppConstant.token.toString())??"";
    print(token);

    try {
      http.Response response = await http.delete(
        Uri.parse(ApiConstant.deleteProfileApi+"${token}"),
      );

      print(response.statusCode);
      if ( response.statusCode == 200 ||response.statusCode == 201 ) {
        print('deleted user');
        Get.snackbar("Account Deleted Successfully","",backgroundColor: BrandColors.colorbutton,colorText: Colors.white);
        SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
        sharedPreferences.clear();
        Get.offAllNamed(Routes.navBarScreen);


      } else {
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
    }
  }



}