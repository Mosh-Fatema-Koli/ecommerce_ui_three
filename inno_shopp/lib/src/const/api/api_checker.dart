
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/widget/custom_snackbar.dart';



class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) {

    if(response.statusCode != 200){
      if(response.statusCode == 401) {
       // Get.find<AuthController>().clearSharedData();
        Get.offAllNamed(Routes.splashScreen);
      }else {
        showCustomSnackBar(response.statusText!, getXSnackBar: getXSnackBar);
      }

    }


  }
}