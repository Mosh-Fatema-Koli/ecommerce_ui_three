import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class HeaderLocalBannerModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final String imageurl;

  @HiveField(4)
  final String discount;

  HeaderLocalBannerModel({

    required this.id,
    required this.name,
    required this.image,
    required this.imageurl,
    required this.discount,
  });
}
