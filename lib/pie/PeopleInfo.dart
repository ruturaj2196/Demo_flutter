class PeopleInfo {
  String? picture;
  String? name;
  String? gender;
  String? email;
  String? address;
  String? phone;
  int? salary;

  PeopleInfo(this.picture, this.name, this.gender, this.email, this.address,
      this.phone, this.salary);

  PeopleInfo.fromJson(Map<String, dynamic> json) {
    picture = json['picture'];
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
    salary = json['salary'];
  }
}
