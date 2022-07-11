// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:doxa_mobile_app/models/models.dart';

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
  final List<CompanyMember> members;

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
    required this.members,
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
      members: [
        for (final Map<String, dynamic> recruiter in map['company_recruiters']) CompanyMember.fromMap(recruiter),
      ],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logo_url': logoImageUrl,
      'cover_image_url': coverImageUrl,
      'industry': industry.id,
      'bio': bio,
      'website': website,
      'location_city': location.city.id,
      'phone': phone,
    };
  }

  Company copyWith({
    int? companyId,
    String? name,
    String? logoImageUrl,
    String? coverImageUrl,
    Industry? industry,
    String? bio,
    String? website,
    Location? location,
    String? phone,
    List<CompanyMember>? members,
  }) {
    return Company(
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      logoImageUrl: logoImageUrl ?? this.logoImageUrl,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      industry: industry ?? this.industry,
      bio: bio ?? this.bio,
      website: website ?? this.website,
      location: location ?? this.location,
      phone: phone ?? this.phone,
      members: members ?? this.members,
    );
  }
}
