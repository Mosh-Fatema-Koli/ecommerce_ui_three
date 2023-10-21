class CategoriesModel {
  int? id;
  String? name;
  String? imageurl;

  CategoriesModel({this.id, this.name, this.imageurl});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageurl = json['imageurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imageurl'] = this.imageurl;
    return data;
  }
}


