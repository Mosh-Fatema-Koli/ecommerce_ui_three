
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/controller/banner_controller.dart';

class BannerImageCarousel extends StatelessWidget {
  final BannerController _bannerController = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        if (_bannerController.headerBannerList.isEmpty) {
          // If no internet connection, display data from Hive
          final hiveData = _bannerController.headerBannerBox!.values.toList();
          return Container(
            height: 200, // Adjust the height as per your requirement
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true, // Set auto-scrolling to true
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: hiveData.map((bannerModel) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      bannerModel.imageurl!,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                );
              }).toList(),
            ),
          );
        } else {
          // If there is internet connection, display data from the controller
          return Container(
            height: 200, // Adjust the height as per your requirement
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true, // Set auto-scrolling to true
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: _bannerController.headerBannerList.map((bannerModel) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      bannerModel.imageurl!,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                );
              }).toList(),
            ),
          );
        }
      },
    );
  }
}
