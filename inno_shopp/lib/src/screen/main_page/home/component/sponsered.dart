
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class SponseredPage extends StatelessWidget {
  const SponseredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height:405,
      width: Get.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          KText(text: "Sponserd",fontSize: 20,fontWeight: FontWeight.bold,),
          SizedBox(
            height: 10,
          ),
          Image.asset("images/sponser.png",fit: BoxFit.fitWidth,height: 300,),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KText(text: "up to 50% Off",fontSize: 20.sp,fontWeight: FontWeight.bold,),
              Icon(Icons.arrow_forward_ios,size: 14,)
            ],
          )


        ],
      ),
    );
  }
}
