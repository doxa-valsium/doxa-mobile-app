import 'package:doxa_mobile_app/models/models.dart';

class MockDatabase {
  List<Gender> genders = [
    const Gender(label: "Male", id: "0"),
    const Gender(label: "Female", id: "1"),
    const Gender(label: "Non-Binary", id: "2"),
    const Gender(label: "Prefer Not to Menteion", id: "3"),
  ];
  List<EmploymentType> employmentType = [
    const EmploymentType(label: "PartType", id: "0"),
    



  ];
  List<WorkplaceType> workplaceType = [];
  List<City> city = [];
  List<Country> country = [];
}
