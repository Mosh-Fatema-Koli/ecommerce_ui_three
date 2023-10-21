
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/main_page/botttom_navbaar.dart';
import 'package:inno_shopp/src/screen/women/dress/component/dress_list.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class WemanDressPage extends StatelessWidget {
  const WemanDressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: (){Get.offAll(BottomNavBar());},
              child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          title: Center(child: KText(text: "Women Dresses",fontWeight: FontWeight.bold,textAlign:TextAlign.center)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,))
          ],

        ),

      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height,
                width: Get.width,
                child: WomenDressList(),
              ),
            ],
          ))
    );
  }
}
