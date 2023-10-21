
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class NewarrivelProduct extends StatelessWidget {
  const NewarrivelProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [

          Image.asset("images/newarrivel.png",height: 230,fit: BoxFit.cover,),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KText(text: "New Arrivals"),
                    KText(text: "Summer’ 25 Collections"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: HexColor("#F83758")

                  ),
                  child: Row(
                    children: [
                      KText(text: "View All",color: Colors.white,),
                      SizedBox(
                        width: 5.h,
                      ),
                      Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),

    );
  }
}
