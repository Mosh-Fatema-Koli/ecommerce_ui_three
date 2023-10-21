
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/src_product.dart';
import 'package:inno_shopp/src/screen/main_page/src_page/src_list.dart';
import 'package:inno_shopp/src/widget/app_bar.dart';
import 'package:inno_shopp/src/widget/drawer.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2f2f2"),

      appBar:setAppBar(),
      drawer: ServiceDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CustomTextField(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KText(text: "Recent Search",fontWeight: FontWeight.bold,),
                  Row(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              KText(text: "Sort"),
                              Icon(Icons.align_vertical_center,size: 12,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              KText(text: "Filter"),
                              Icon(Icons.filter_alt_outlined,size: 12,),
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                  height: Get.height,

                  child: SearchList())
            ],
          ),
        ),
      ),
    );
  }
}
