
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/product/productsDetails.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class NewArrivel extends StatelessWidget {
  const NewArrivel({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  BrandColors.colorbutton,
        title: KText(text: "New Arrival",color: BrandColors.backgroundColor,),

      ),

      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.6


        ),
        itemBuilder: (BuildContext context, int index) {
          return   GestureDetector(
            onTap: (){
              Get.to(ProductsDetailes());
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 180,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Image.asset("images/product.png",fit: BoxFit.cover,height:150,width: Get.width,)),
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
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: CartButtons.cartbuttonWidget(

                                    press: (){
                                    },
                                    text: "Add To Cart",textColor: Colors.white,),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(

                                    onPressed: (){},
                                    icon:Icon(Icons.favorite_border) ,
                                  ),
                                )

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

    );
  }
}
