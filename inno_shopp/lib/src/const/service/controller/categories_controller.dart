import 'package:get/get.dart';
import 'package:inno_shopp/src/const/service/model/catagories_model.dart';
import 'package:inno_shopp/src/const/service/model/sub_categories_model.dart';
import 'package:inno_shopp/src/const/service/repository/categories_repository.dart';

class CategoriesController extends GetxController{

  var isLoaded = true.obs;

  var catList = <CategoriesModel>[].obs;
  var subCatList = <SubCategoriesModel>[].obs;

  final catRepository = CategoriesRepository();


  @override
  void onInit() {

    fetchCategoriesData();
    super.onInit();
  }


  void onClose() {


    super.onClose();
  }


  void fetchCategoriesData(){
    isLoaded.value = true;
    CategoriesRepository().categoriesFetch().then((List<CategoriesModel> responseData) {
      catList.value = responseData;


    });

  }

  void fetchSubCategoriesData(){
    isLoaded.value = true;
    CategoriesRepository().subCategoriesFetch().then((List<SubCategoriesModel> responseData) {
      subCatList.value = responseData;

    });

  }



}