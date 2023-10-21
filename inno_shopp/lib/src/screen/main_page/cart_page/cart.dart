import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/screen/main_page/cart_page/process_payment.dart';
import 'package:inno_shopp/src/screen/main_page/profile_page/edit_profile.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(child: KText(text: "Checkout",fontWeight: FontWeight.bold,textAlign:TextAlign.center)),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Row(

                children: [
                  Icon(Icons.location_on_outlined,color: Colors.black,size:15,),
                  KText(text: "Delivery Address",fontWeight: FontWeight.bold,fontSize: 16,)
                ],
              ),
              SizedBox(height: 10,),
             SizedBox(
               height: 110,
                width: Get.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,

                        child: Card(

                                child: SizedBox(
                                  height: Get.height,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      KText(text: "Address :"),
                                      KText(text: "216 St Paul's Rd, London N1 2LL, UK \nContact :  +44-784232",fontSize: 12,)
                                    ],),
                                  ),
                                ),
                    )),
                    Expanded(
                      flex: 1,
                        child: GestureDetector(
                          onTap: () => Get.to(ProfileEditPage()),
                          child: Card(

                            child: SizedBox(
                              height: Get.height,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Icon(Icons.add_box_outlined)
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 10,),
              KText(text: "Shopping List",fontWeight: FontWeight.bold,fontSize: 16,),
              SizedBox(height: 10,),

              GestureDetector(
                onTap: (){

                  Get.to(PaymentProcessPage());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(child: Image.asset("images/product.png")),

                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(text: "Women’s Casual Wear",fontWeight: FontWeight.w600,fontSize: 12,),
                                    Row(
                                      children: [
                                        KText(text: "Variations : ",fontSize: 12,),
                                        Container(
                                          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey,width: 1),
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: KText(text: "Black",fontSize: 10,),
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        IconButton(onPressed: (){}, icon:Icon(Icons.remove_circle,size: 14,)),
                                        KText(text: "1",fontSize: 12,),
                                        IconButton(onPressed: (){}, icon:Icon(Icons.add_circle_outlined,size: 14))
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        KText(text: " 250.00 * 1 = ",fontSize: 12,),
                                        KText(text: "500.00 Tk ",fontSize: 12,),
                                      ],
                                    ),
                                  ],
                                ),
                              ))

                            ],
                          ),
                        ),
                      ),

                      Divider(
                        color: Colors.grey[200],
                        indent: 0,
                        endIndent:0,
                        thickness: 2,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(text: "Total Order (1)   :"),
                          KText(text: " 45.00 Tk")

                        ],
                      ),
                    ],
                  ),

                ),
              ),

              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(text: "Process",textColor: Colors.white)

            ],
          ),
        ),
      ),
    );
  }
}
