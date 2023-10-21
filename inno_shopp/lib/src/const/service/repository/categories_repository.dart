import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inno_shopp/src/const/api/api_const.dart';
import 'package:inno_shopp/src/const/service/model/catagories_model.dart';
import 'package:inno_shopp/src/const/service/model/sub_categories_model.dart';

class CategoriesRepository {


  Future<List<CategoriesModel>> categoriesFetch() async {
    try {

      List<CategoriesModel> catList = <CategoriesModel>[];

      Uri url = Uri.parse(ApiConstant.categoriesApi);

      final http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',

      });

      print("response: $response");

      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonMap = jsonDecode(response.body);
        print(jsonMap);
        for (var store in jsonMap) {
          catList.add(CategoriesModel.fromJson(store));
        }
        return catList;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }


  Future<List<SubCategoriesModel>> subCategoriesFetch() async {
    try {

      List<SubCategoriesModel> subCatList = <SubCategoriesModel>[];

      Uri url = Uri.parse(ApiConstant.subCategoriesApi);

      final http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',

      });

      print("response: $response");

      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonMap = jsonDecode(response.body);
        print(jsonMap);
        for (var store in jsonMap) {
          subCatList.add(SubCategoriesModel.fromJson(store));
        }
        return subCatList;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }


}