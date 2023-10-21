import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:inno_shopp/src/const/service/model/banner_model.dart';
import 'package:inno_shopp/src/const/service/repository/banner_repository.dart';

// class BannerController extends GetxController{
//
//
//   var isLoaded = true.obs;
//
//   var headerBannerList = <HeaderBannerModel>[].obs;
//   var midBannerList = <MidBannerModel>[].obs;
//   var offerBannerList = <OfferBannerModel>[].obs;
//
//
//   final bannerRepository = BannerRepository();
//
//
//   @override
//   void onInit() {
//
//     fetchHeaderBannerData();
//     fetchMidBannerData();
//
//     super.onInit();
//   }
//
//
//   void onClose() {
//
//
//     super.onClose();
//   }
//
//
//   void fetchHeaderBannerData(){
//     isLoaded.value = true;
//     BannerRepository().headerBannerFetch().then((List<HeaderBannerModel> responseData) {
//       headerBannerList.value = responseData;
//       isLoaded.value = false;
//
//
//     });
//
//   }
//
//   void fetchMidBannerData(){
//     isLoaded.value = true;
//     BannerRepository().midBannerFetch().then((List<MidBannerModel> responseData) {
//       midBannerList.value = responseData;
//
//     });
//
//   }
//
//
//
// }
class BannerController extends GetxController {
  var isLoaded = true.obs;

  var headerBannerList = <HeaderBannerModel>[].obs;
  var midBannerList = <MidBannerModel>[].obs;
  var offerBannerList = <OfferBannerModel>[].obs;

  final bannerRepository = BannerRepository();
  late Box<HeaderBannerModel>? headerBannerBox;
  late Box<MidBannerModel>? midBannerBox;
 // late Box<OfferBannerModel>? offerBannerBox; // Use nullable type

  @override
  void onInit() {
    initHive();
    fetchHeaderBannerData();
    fetchMidBannerData();
    super.onInit();
  }

  void initHive() async {
    await Hive.initFlutter();
    headerBannerBox = await Hive.openBox<HeaderBannerModel>('headerBannerBox');
    midBannerBox = await Hive.openBox<MidBannerModel>('midBannerBox');
  }

  void onClose() {
    headerBannerBox?.close(); // Use safe null-check
    super.onClose();
  }

  void fetchHeaderBannerData() {
    isLoaded.value = true;
    BannerRepository().headerBannerFetch().then((List<HeaderBannerModel> responseData) {
      headerBannerList.value = responseData;
      headerBannerBox?.addAll(responseData); // Use safe null-check
    });
  }

// Other methods remain the same

  void fetchMidBannerData(){
    isLoaded.value = true;
    BannerRepository().midBannerFetch().then((List<MidBannerModel> responseData) {
      midBannerList.value = responseData;

    });

  }



}