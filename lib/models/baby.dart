import 'package:objectbox/objectbox.dart';

@Entity()
class Baby {
  // Each ObjectBox entity needs an ID of type int.
  // ObjectBox will assign a unique ID automatically.
  @Id()
  int id = 0;

  String name;

  // ObjectBox can store DateTime objects directly.
  // It's stored as a millisecond-based Unix timestamp internally.
  DateTime dob;

  double weight;

  String gender;

  // Optional fields are declared as nullable.
  double? height;
  String? imagePath; // Store the file path of the image, not the image itself.

  Baby({
    this.id = 0,
    required this.name,
    required this.dob,
    required this.weight,
    required this.gender,
    this.height,
    this.imagePath,
  });
}