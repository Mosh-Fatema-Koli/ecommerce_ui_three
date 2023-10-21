import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:inno_shopp/src/const/service/model/favouritelist_model.dart';


class FavoriteController extends GetxController {
  final _favorites = <Item>[].obs;
  Box<Item> favoritesBox = Hive.box<Item>('favorites');

  List<Item> get favorites => _favorites;

  void addToFavorites(Item item) {
    favoritesBox.add(item);
    _favorites.add(item);
  }

  void removeFromFavorites(Item item) {
    favoritesBox.delete(item.key);
    _favorites.remove(item);
  }


}
