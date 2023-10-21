import 'package:hive/hive.dart';
import 'package:inno_shopp/src/const/service/model/favouritelist_model.dart';


class Service{

  Future<void> initHive() async {
    await Hive.openBox<Item>('favorites');
  }
  




}