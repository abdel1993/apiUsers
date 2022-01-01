import 'package:newusers/Models/address.dart';
import 'package:newusers/Models/company.dart';

class Users {
  late int id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Company company;

  Users(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address =
        (json['address'] != null ? Address.fromJson(json['address']) : null)!;
    // if (json['address'] != null ) {
    //   address = Address.fromJson(json['address']);
    // } else {
    //    null ;
    // }
    phone = json['phone'];
    website = json['website'];
    company =
        (json['company'] != null ? Company.fromJson(json['company']) : null)!;
  }
}
