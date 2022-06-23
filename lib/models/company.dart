import 'package:equatable/equatable.dart';

import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/selectable.dart';

class Company extends Equatable {
  final int? companyId;
  final String name;
  final String? logoImageUrl;
  final String? coverImageUrl;
  final Industry industry;
  final String bio;
  final String website;
  final Location location;
  final String phone;

  const Company({
    this.companyId,
    required this.name,
    this.logoImageUrl,
    this.coverImageUrl,
    required this.industry,
    required this.bio,
    required this.website,
    required this.location,
    required this.phone,
    // required this.recruiters,
  });
  @override
  List<Object?> get props => [companyId, name, logoImageUrl, coverImageUrl, industry, bio, website, location, phone];

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      companyId: map['id'] != null ? map['id'] as int : null,
      name: map['name'] as String,
      logoImageUrl: map['logo_url'] != null ? map['logo_url'] as String : null,
      coverImageUrl: map['cover_image_url'] != null ? map['cover_image_url'] as String : null,
      industry: Industry.fromMap(map['industry'] as Map<String, dynamic>),
      bio: map['bio'] as String,
      website: map['website'] as String,
      location: Location.fromCity(City.fromMap(map['location_city'])),
      phone: map['phone'] as String,
    );
  }
}
