
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/product/productsDetails.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class TrendingProduct extends StatelessWidget {
   TrendingProduct({super.key});

  ScrollController _scrollController = ScrollController();

  @override

  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ListView.builder(
          controller: _scrollController,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return   GestureDetector(
              onTap: (){
                Get.to(ProductsDetailes());
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 250,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Image.asset("images/product.png",fit: BoxFit.cover,height: 100,width: Get.width,)),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              KText(text: "Women Printed Kurta",fontSize: 14,fontWeight: FontWeight.bold,),
                              KText(text: "Neque porro quisquam est qui dolorem ipsum quia",fontSize: 10,),
                              SizedBox(height: 5,),
                              KText(text: "Tk 1500"),
                              Row(
                                children: [
                                  KText(text: "Tk 1500",decoration: TextDecoration.lineThrough,color: BrandColors.lightgreyColor,fontSize: 12,),
                                  SizedBox(width: 5,),
                                  KText(text: " 40% off",color: BrandColors.colorbutton,fontSize: 12,),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.star,size: 14,color: Colors.amber,),
                                  Icon(Icons.star,size: 14,color: Colors.amber,),
                                  Icon(Icons.star,size: 14,color: Colors.amber,),
                                  Icon(Icons.star,size: 14,color: Colors.amber,),
                                  Icon(Icons.star,size: 14,color: Colors.amber,),
                                  SizedBox(width: 5,),
                                  KText(text: " 456",color:BrandColors.lightgreyColor,fontSize: 12,),
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 150,
          right: 10,

          child: GestureDetector(
            onTap:
            _scrollToTop,
            child: CircleAvatar(
                backgroundColor: BrandColors.lightgreyColor,
                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,)),
          ),

        ),
      ],
    );

  }

   // Function to scroll to the top of the list
   void _scrollToTop() {
     _scrollController.animateTo(
       0.0,
       duration: Duration(milliseconds: 500),
       curve: Curves.easeOut,
     );
   }
}
