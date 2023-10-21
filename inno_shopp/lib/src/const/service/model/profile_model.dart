class ProfileModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  dynamic country;
  dynamic city;
  dynamic image;
  dynamic  address;
  String? userType;
  String? createdAt;
  String? updatedAt;

  ProfileModel(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.country,
        this.city,
        this.image,
        this.address,
        this.userType,
        this.createdAt,
        this.updatedAt});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name']??"";
    email = json['email']??"";
    phone = json['phone']??"";
    country = json['country']??"";
    city = json['city']??"";
    image = json['image']??"";
    address = json['address']??"";
    userType = json['user_type']??"";
    createdAt = json['created_at']??"";
    updatedAt = json['updated_at']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['country'] = this.country;
    data['city'] = this.city;
    data['image'] = this.image;
    data['address'] = this.address;
    data['user_type'] = this.userType;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}