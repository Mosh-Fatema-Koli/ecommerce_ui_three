
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/main_page/cart_page/select_payment_option.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/colors.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class PaymentProcessPage extends StatelessWidget {
  const PaymentProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){Get.back();},
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        title: Center(child: KText(text: "Checkout",fontWeight: FontWeight.bold,textAlign:TextAlign.center)),
        actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,))
        ],

      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: Image.asset("images/product.png")),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(text: "Women’s Casual Wear",fontWeight: FontWeight.w600,fontSize: 14,),
                                    KText(text: "Checked Single-Breasted Blazer",fontSize: 12,),
                                    Row(
                                      children: [
                                        KText(text: "Size : M"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        KText(text: "Qty : 2")
                                      ],
                                    ),


                                    Row(
                                      children: [
                                        KText(text: "Delivery by",fontSize: 14,),
                                        SizedBox(
                                          width: 8,
                                        ),

                                        KText(text: "10 May 2XXX",fontSize: 12)
                                      ],
                                    )
                                  ],
                                ),
                              )),

                            ],
                          ),


                        ],
                      ),

                    ),
                  ),

                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("images/icon _coupon_.png",height: 20,width: 20,),
                                SizedBox(width: 5,),
                                KText(text: "Apply Coupons",color: BrandColors.colorbutton,),
                              ],
                            ),
                            KText(text: "Select",color: Colors.pink,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          color: Colors.grey[200],
                          indent: 0,
                          endIndent:0,
                          thickness: 2,
                        ),
                        SizedBox(height: 5,),
                        KText(text: "Order Payment Details",fontSize: 16,fontWeight: FontWeight.w600,),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(text: "Order Amounts",fontSize: 14,),
                            KText(text: "7,000.00",fontSize: 14,)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(text: "Convenience",fontSize: 14,),
                            KText(text: "Apply Coupon",fontSize: 14,color: BrandColors.colorbutton,)
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(text: "Delivery Fee",fontSize: 14,),
                            KText(text: "Free",fontSize: 14,)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey[200],
                          indent: 0,
                          endIndent:0,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            KText(text: "Order Total",fontSize: 14,fontWeight: FontWeight.bold,),
                            KText(text: "7,000.00",fontSize: 14,)
                          ],
                        ),



                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
          Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only( topLeft: Radius.circular(15),topRight: Radius.circular(15)),
             color: Colors.white
           ),
            padding: EdgeInsets.all(10),
            height: 100,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    KText(text: "7,000.00",fontSize: 14,),
                    KText(text: "View Details",fontSize: 14,),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: GlobalButtons.buttonWidget(
                      press: (){
                        Get.to( SelectPaymentOption());
                      },
                      text: "Proceed to Payment",textColor: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
