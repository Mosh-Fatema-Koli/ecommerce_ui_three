class HeaderBannerModel {
  int? id;
  String? name;
  String? image;
  String? imageurl;
  String? discount;
  String? createdAt;
  String? updatedAt;

  HeaderBannerModel(
      {this.id,
        this.name,
        this.image,
        this.imageurl,
        this.discount,
        this.createdAt,
        this.updatedAt});

  HeaderBannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    imageurl = json['imageurl'];
    discount = json['discount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['imageurl'] = this.imageurl;
    data['discount'] = this.discount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}


class MidBannerModel {
  int? id;
  String? name;
  String? image;
  String? imageurl;
  String? discount;
  String? createdAt;
  String? updatedAt;

  MidBannerModel(
      {this.id,
        this.name,
        this.image,
        this.imageurl,
        this.discount,
        this.createdAt,
        this.updatedAt});

  MidBannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    imageurl = json['imageurl'];
    discount = json['discount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['imageurl'] = this.imageurl;
    data['discount'] = this.discount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}


class OfferBannerModel {
  int? id;
  String? name;
  String? image;
  String? imageurl;
  String? discount;
  String? createdAt;
  String? updatedAt;

  OfferBannerModel(
      {this.id,
        this.name,
        this.image,
        this.imageurl,
        this.discount,
        this.createdAt,
        this.updatedAt});

  OfferBannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    imageurl = json['imageurl'];
    discount = json['discount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['imageurl'] = this.imageurl;
    data['discount'] = this.discount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}



