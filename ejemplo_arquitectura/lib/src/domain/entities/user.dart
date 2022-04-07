///
class User {
  ///
  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  ///
  final int? id;

  ///
  final String? name;

  ///
  final String? username;

  ///
  final String? email;

  ///
  final Address? address;

  ///
  final String? phone;

  ///
  final String? website;

  ///
  final Company? company;
}

///
class Address {
  ///
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  ///
  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json['street'].toString(),
        suite: json['suite'].toString(),
        city: json['city'].toString(),
        zipcode: json['zipcode'].toString(),
      );

  ///
  final String? street;

  ///
  final String? suite;

  ///
  final String? city;

  ///
  final String? zipcode;

  ///
  final Geo? geo;
}

///
class Geo {
  ///
  Geo({
    this.lat,
    this.lng,
  });

  ///
  factory Geo.fromJson(Map<String, dynamic> json) =>
      Geo(lat: json['lat'].toString(), lng: json['lng'].toString());

  ///
  final String? lat;

  ///
  final String? lng;
}

///
class Company {
  ///
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  ///
  final String? name;

  ///
  final String? catchPhrase;

  ///
  final String? bs;
}
