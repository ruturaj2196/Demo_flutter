class PeopleInfo {
//  String? picture;
  String? name;
  String? gender;
  String? email;
  String? address;
  String? phone;
  String? salary;
  String? age;

  PeopleInfo(this.name, this.gender, this.email, this.address, this.phone,
      this.salary, this.age);

  PeopleInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
    salary = json['salary'];
    age = json['age'];
  }
}
