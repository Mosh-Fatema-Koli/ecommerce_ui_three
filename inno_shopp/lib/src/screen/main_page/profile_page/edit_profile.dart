import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/controller/profile_controller.dart';
import 'package:inno_shopp/src/const/service/model/profile_model.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({super.key});

  final ProfileController _controller = Get.put(ProfileController());

  final ProfileModel? data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    if(data == null){
     print("Data Controller null");
    }else{
      _controller.nameController.value.text = data!.name.toString();
      _controller.phoneController.value.text = data!.phone.toString();
      _controller.emailController.value.text = data!.email.toString();
      _controller.addressController.value.text = data!.address.toString()??"";
      _controller.cityController.value.text = data!.city.toString()??"";
      _controller.countryController.value.text = data!.country.toString()??"";
    }



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){Get.back();},
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Center(child: KText(text: "Checkout",fontWeight: FontWeight.bold,textAlign:TextAlign.center)),
        actions: [
          Container(
            width: 50,
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profileImage(),
             _personalDetails(),
              _devider(),
              const SizedBox(
                height: 40,
              ),
              _addressDetails(),

              const SizedBox(
                height: 20,
              ),
              _devider(),
              const SizedBox(
                height: 30,
              ),

              GlobalButtons.buttonWidget(
                  press: (){
                  //  Get.to(BottomNavBar());
                  },
                  text: "Save",textColor: Colors.white),

              const SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
      ),
    );
  }

   _devider() {
    return Divider(
              color: Colors.grey[400],
              height: 1,
              indent: 10,
              endIndent: 10,
            );
  }

  _personalDetails() {
    return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                   const SizedBox(
                     height: 20,
                   ),
                   KText(text: "Personal Details",fontWeight: FontWeight.w600,fontSize: 18,),
                   const SizedBox(
                     height: 20,
                   ),
                   KText(text: "Name"),
                   SignUpTextField(
                     controller: _controller.nameController.value,
                     hintText: "Enter Your Email Address",
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   KText(text: "Email Address"),

                   SignUpTextField(
                     controller: _controller.emailController.value,
                     hintText: "Enter Your Email Address",
                   ),
                   KText(text: "phone Number"),

                   SignUpTextField(
                     controller: _controller.phoneController.value,
                     hintText: "Enter Your Phone Number",
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       KText(text: "Change Password",color: Colors.pink,fontSize: 12,)
                     ],
                   ),

                   const SizedBox(
                     height: 30,
                   ),
           ],);
  }

  _addressDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KText(text: "Address Details",fontWeight: FontWeight.w600,fontSize: 18,),

                const SizedBox(
                  height: 20,
                ),


                KText(text: "Address"),
                SignUpTextField(
                  hintText: "Enter your address details",
                 controller: _controller.addressController.value,

                ),
                const SizedBox(
                  height: 5,
                ),
                KText(text: "City"),
                SignUpTextField(
                  hintText: "Enter your city name",
                  controller: _controller.cityController.value,
                ),
                const SizedBox(
                  height: 5,
                ),

                KText(text: "Country"),
                SignUpTextField(
                  hintText: "Enter your country name",
                  controller: _controller.countryController.value,
                ),

              ],
            );
  }

  _profileImage() {
    return Center(child: Stack(
              children: [
                Image.asset("images/edit_profile.png",height: 100,width: 100,),
                const Positioned(
                    bottom: 12,
                    right: 7,
                    child: Icon(Icons.edit,color: Colors.white,size: 15,))
              ],
            ));
  }
}
