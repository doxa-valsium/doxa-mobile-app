import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final City city;
  final Country country;
  const Location({required this.city, required this.country});

  @override
  List<Object?> get props => [city, country];


  factory Location.fromCity(City city){
    return Location(city: city, country: const Country(id:1, label: 'Pakistan'));
  }
}
