class User {
  List<Data> data;

  User({this.data});

  User.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String email;
  String phone;
  String picture;
  String address;
  String password;
  String createdAt;
  String updatedAt;

  Data(
      {this.id,
        this.name,
        this.email,
        this.phone,
        this.picture,
        this.address,
        this.password,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['Name'];
    email = json['Email'];
    phone = json['Phone'];
    picture = json['Picture'];
    address = json['Address'];
    password = json['Password'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['Phone'] = this.phone;
    data['Picture'] = this.picture;
    data['Address'] = this.address;
    data['Password'] = this.password;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
