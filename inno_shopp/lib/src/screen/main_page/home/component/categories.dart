
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/controller/categories_controller.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class CategoriesPage extends StatelessWidget {
      CategoriesPage({super.key});

 final CategoriesController _categorisController = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: _categorisController.catList.length,
      itemBuilder: (context, index) =>
        Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: NetworkImage(_categorisController.catList[index].imageurl.toString()??""),
                ),
                KText(text: _categorisController.catList[index].name??"")

              ],
            ),
          ),
        ),);
  }
}
