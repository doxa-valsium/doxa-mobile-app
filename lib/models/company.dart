import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/recruiter.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Company  extends Equatable{
  final String? companyId;
  final String title;
  final String? logoImageUrl;
  final String? coverImageUrl;
  final Industry industry;
  final String bio;
  final String website;
  final Location location;
  final String email;
  final String phone;
  final List<Recruiter> recruiters;
  const Company(
      {this.companyId,
      required this.title,
      this.logoImageUrl,
      this.coverImageUrl,
      required this.industry,
      required this.bio,
      required this.website,
      required this.location,
      required this.email,
      required this.phone,
      required this.recruiters});
  @override
    List<Object?> get props => [companyId, title, logoImageUrl, coverImageUrl, industry, bio, website, location, email, phone, recruiters];
}
