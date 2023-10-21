
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/helper/routes.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/banner.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/categories.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/deal_of_day.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/new_arrivel.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/sponsered.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/src_product.dart';
import 'package:inno_shopp/src/screen/main_page/home/component/trending_product.dart';
import 'package:inno_shopp/src/widget/app_bar.dart';
import 'package:inno_shopp/src/widget/drawer.dart';
import 'package:inno_shopp/src/widget/hex_color.dart';
import 'package:inno_shopp/src/widget/k_text.dart';
import 'package:inno_shopp/src/widget/text_box_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2f2f2"),
     appBar:setAppBar(),
     drawer: ServiceDrawer(),
     body:SingleChildScrollView(
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
                 KText(text: "All Featured",fontWeight: FontWeight.bold,),
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

   //Categories ***************************////******************


             Container(
                 height: 100,
                 child: CategoriesPage()
             ),

  //banner***************************////******************


             BannerImageCarousel(),
              SizedBox(
                height: 10,
              ),

  //recent products ***************************////******************

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
               child:Padding(
                 padding: const EdgeInsets.all(15),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         KText(text: "Recent Product",color: Colors.white,fontSize: 16.sp,),
                         SizedBox(
                           height: 5.h,
                         ),
                         Row(
                           children: [
                             Icon(Icons.watch_later_outlined,color: Colors.white,size: 14,),
                             SizedBox(
                               width: 5.h,
                             ),
                             KText(text: "22h 55m 20s remaining",color: Colors.white,fontSize: 12.sp,),
                           ],
                         )

                       ],
                     ),
                     GestureDetector(
                       onTap: (){
                         Get.toNamed(Routes.recentProductScreen);
                       },
                       child: Container(
                         padding: EdgeInsets.all(10),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.white,width: 2)
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
                       ),
                     )
                   ],
                 ),
               ) ,
             ),
            SizedBox(
              height: 10,
            ),

             Container(
                height: 300,
                 width: Get.width,
                 child: DealOfDaily()),
             SizedBox(
               height: 10,
             ),

  //Special Offer ***************************////******************

            Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset("images/offer.png",height: 60,),
                  SizedBox(width: 30.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          KText(text: "Special Offers"),
                          Image.asset("images/icon.png",height: 20,width: 20,)
                        ],
                      ),
                      KText(text: "We make sure you get the \noffer you need at best prices")
                    ],
                  )
                ],
              ),
            ),
             SizedBox(
               height: 10,
             ),
             Stack(
               children: [
                 SizedBox(
                   height: 170.h,
                   width: Get.width,
                   child: Image.asset("images/mid_banner.png",fit: BoxFit.cover,),
                 ),
                 Positioned(
                     bottom: 80,
                     right: 10,
                     child: Container(
                   padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                       color: HexColor("#F83758")

                   ),
                   child: Row(
                     children: [
                       KText(text: "Visit Now",color: Colors.white,),
                       SizedBox(
                         width: 5.h,
                       ),
                       Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 16,)
                     ],
                   ),
                 ) )
               ],
             ),


             SizedBox(
               height: 10,
             ),





     //Trending Prodict ***************************////******************
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: HexColor("#FD6E87"),
               ),
               child:Padding(
                 padding: const EdgeInsets.all(15),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         KText(text: "Trending Products ",color: Colors.white,fontSize: 16.sp,),
                         SizedBox(
                           height: 5.h,
                         ),
                         Row(
                           children: [
                             Icon(Icons.calendar_month_rounded,color: Colors.white,size: 14,),
                             SizedBox(
                               width: 5.h,
                             ),
                             KText(text: "Last Date 29/02/22",color: Colors.white,fontSize: 12.sp,),
                           ],
                         )

                       ],
                     ),
                     Container(
                       padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.white,width: 2)
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
               ) ,
             ),

             SizedBox(
               height: 10,
             ),
             Container(
                 height: 300,
                 width: Get.width,
                 child: TrendingProduct()),
             SizedBox(
               height: 10,
             ),


     //New Arrivel***************************////******************
             NewarrivelProduct(),

             SizedBox(
               height: 10,
             ),
    //Sponsore***************************////******************
             SponseredPage(),










         ] ),
       ),
     ) ,
    );
  }
}
