
import 'package:flutter/material.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/src_product.dart';
import 'package:inno_shopp/src/screen/main_page/white-list_page/component/grid_view.dart';
import 'package:inno_shopp/src/widget/app_bar.dart';
import 'package:inno_shopp/src/widget/drawer.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class WhiteListPage extends StatelessWidget {
  const WhiteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: HexColor("#f2f2f2"),
          appBar:setAppBar(),
          drawer: ServiceDrawer(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SrcPage(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: "52,082+ Iteams",fontWeight: FontWeight.bold,),
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
                      height: MediaQuery.of(context).size.height/1.4,
                      child: StaggeredGridPage())
                ],
              ),
            ),
          ),


    ));
  }
}
