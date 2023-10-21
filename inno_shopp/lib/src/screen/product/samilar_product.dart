
import 'package:flutter/material.dart';
import 'package:inno_shopp/src/widget/k_text.dart';

class SamilerProduct extends StatelessWidget {
  SamilerProduct({super.key});

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
            return   Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Image.asset("images/product.png",fit: BoxFit.cover,)),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(text: "Women Printed Kurta",fontSize: 14,fontWeight: FontWeight.bold,),
                            KText(text: "Neque porro quisquam est qui dolorem ipsum quia",fontSize: 12,),
                            KText(text: "1500"),
                            Row(
                              children: [
                                KText(text: "1500"),
                                KText(text: " 40% off"),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,size: 14,color: Colors.amber,)
                              ],
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 100,
          right: 10,

          child: GestureDetector(
            onTap:
            _scrollToTop,
            child: CircleAvatar(
                backgroundColor: Colors.grey[300],
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
