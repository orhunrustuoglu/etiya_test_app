import 'package:etiya_test_app/models/geo.dart';

import 'address.dart';
import 'company.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name, userName, email, phone, website;
  final Address address;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  @override
  List<Object?> get props =>
      [id, name, userName, email, phone, website, address, company];

  static List<User> users = [];
}
