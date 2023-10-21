import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class SrcPage extends StatelessWidget {
  const SrcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        print("clicked");
        Get.toNamed(

          Routes.searchScreen

        );
      },
      child: Card(
        child: Container(
          height: 50,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
              Icon(Icons.search,color: Colors.grey,),
              Icon(Icons.mic,color: Colors.grey,)
            ],
            ),
          ) ,
        ),
      )

    );
  }
}
