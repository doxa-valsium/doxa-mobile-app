import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final City city;
  final Country country = const Country(id: 1, label: 'Pakistan');
  const Location({required this.city});

  
  @override
  List<Object?> get props => [city, country];
}
