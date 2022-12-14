import 'geo.dart';

class Address {
  final String street, suite, city, zipcode;
  final Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});
}
