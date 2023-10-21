
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/widget/button.dart';
import 'package:inno_shopp/src/widget/k_text.dart';


class SelectPaymentOption extends StatelessWidget {
  const SelectPaymentOption({super.key});

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
          Container(
            width: 50,
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KText(text: "Order"),
                  KText(text: "Tk 7000")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KText(text: "Shipping"),
                  KText(text: "Tk 200")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color:Colors.grey ,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  KText(text: "Total"),
                  KText(text: "TK 7200")
                ],
              ),
              SizedBox(
                height: 20,
              ),

              KText(text: "Recomemmended Methods",fontSize: 16,fontWeight: FontWeight.bold,),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: "Credit/Debit Card"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              KText(text: "Payment Methods",fontSize: 16,fontWeight: FontWeight.bold,),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          KText(text: "Bkash"),
                        ],
                      ),
                     Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: "Roket"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: "Nogod"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(text: "Cash On Delivery"),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),








            ],
          ),
        ),
      ),
    );
  }
}
