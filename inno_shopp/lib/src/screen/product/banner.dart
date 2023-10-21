
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerImageCarouselProduct extends StatelessWidget {

  List<String> bannerImages = [
    'images/banner1.png',
    'images/banner1.png',
    'images/banner1.png',
    // Add more image URLs as needed
  ];
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 250, // Adjust the height as per your requirement
      child: CarouselSlider(

        options: CarouselOptions(
          autoPlay: true, // Set auto-scrolling to true
         // aspectRatio: 2.0,

          enlargeCenterPage: true,
          viewportFraction: 1.0,
          aspectRatio: 16 / 8,
          //enlargeCenterPage: true,
        ),
        items: bannerImages.map((imageURL) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                imageURL,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}