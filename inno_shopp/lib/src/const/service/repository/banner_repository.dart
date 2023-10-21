import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inno_shopp/src/const/api/api_const.dart';
import 'package:inno_shopp/src/const/service/model/banner_model.dart';
import 'package:inno_shopp/src/const/service/model/catagories_model.dart';
import 'package:inno_shopp/src/const/service/model/sub_categories_model.dart';

class BannerRepository {


  Future<List<HeaderBannerModel>> headerBannerFetch() async {
    try {

      List<HeaderBannerModel> headerBannerList = <HeaderBannerModel>[];

      Uri url = Uri.parse(ApiConstant.headerBannerApi);

      final http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',

      });

      print("response: $response");

      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonMap = jsonDecode(response.body);
        print(jsonMap);
        for (var store in jsonMap) {
          headerBannerList.add(HeaderBannerModel.fromJson(store));
        }
        return headerBannerList;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }


  Future<List<MidBannerModel>> midBannerFetch() async {
    try {

      List<MidBannerModel> midBannerList = <MidBannerModel>[];

      Uri url = Uri.parse(ApiConstant.midBannerApi);

      final http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',

      });

      print("response: $response");

      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonMap = jsonDecode(response.body);
        print(jsonMap);
        for (var store in jsonMap) {
         midBannerList.add(MidBannerModel.fromJson(store));
        }
        return midBannerList;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }


}