import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/product/banner.dart';
import 'package:inno_shopp/src/screen/product/samilar_product.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class ProductsDetailes extends StatelessWidget {
  const ProductsDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BannerImageCarouselProduct(),
                KText(text: "Size: 7UK  "),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.pink,width: 2)
                  ),
                  child: KText(text: "6 UK",fontSize: 12,),

                ),
                SizedBox(
                  height: 10,
                ),
                KText(text: "NIke Sneakers",fontSize: 16,fontWeight: FontWeight.bold,),
                SizedBox(
                  height: 5,
                ),
                KText(text: "Vision Alta Men’s Shoes Size (All Colours)",fontSize: 12,),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amber,size: 14,)
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    KText(text: "2999"),
                    KText(text: "1500"),
                    KText(text: "50% Off"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                KText(text: "Product Details",fontSize: 14,),
                SizedBox(
                  height: 5,
                ),
                KText(text: 'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',fontSize: 12,),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,size: 14,color: Colors.grey,),
                          KText(text: "Nearest Store",fontSize: 12,color: Colors.grey,),
                        ],
                      ),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.lock_outline,size: 14,color: Colors.grey,),
                          KText(text: "VIP",fontSize: 12,color: Colors.grey,),
                        ],
                      ),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.cached_sharp,size: 14,color: Colors.grey,),
                          KText(text: "Return Policy",fontSize: 12,color: Colors.grey,),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6,top: 6,bottom: 6,right: 3),
                          child: Card(

                            child: Container(
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[Colors.lightBlue, Colors.indigo]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50,top: 10,bottom: 10,right: 30),
                                child: KText(text: "Add to Cart",color: Colors.white,),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            bottom: 8,

                            child: CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              backgroundImage:AssetImage("images/blue.png"),
                              child: Image.asset("images/cart.png"),
                              radius: 22,
                            ))
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6,top: 6,bottom: 6,right: 3),
                          child: Card(

                            child: Container(
                              decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[Colors.greenAccent,Colors.green]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50,top: 10,bottom: 10,right: 30),
                                child: KText(text: "Buy Now",color: Colors.white,),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            bottom: 8,

                            child: CircleAvatar(
                          backgroundColor: Colors.greenAccent,
                          backgroundImage:AssetImage("images/green.png"), 
                          child: Image.asset("images/hand.png"),
                          radius: 22,
                        ))
                      ],
                    )

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: HexColor("#FFCCD5")
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(text: "Delivery in",fontSize: 12,fontWeight: FontWeight.bold,),
                      KText(text: "1 within Hour",fontSize: 16,fontWeight: FontWeight.bold,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Row(
                            children: [
                              Icon(Icons.visibility_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              KText(text: "View Similar")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Row(
                            children: [
                              Icon(Icons.compare_rounded),
                              SizedBox(
                                width: 5,
                              ),
                              KText(text: "Add to Compare")
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                KText(text: "Similar To",fontSize: 16,fontWeight: FontWeight.bold,),
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
                height: 300,
                child: SamilerProduct())

              ],
            ),
          ),
        ),
      ),

    );
  }
}
