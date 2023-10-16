// Define the Gender enum
enum Gender {
  male,
  female,
}

class PetData {
  final String name;
  final String variant;
  final int age;
  final Gender gender;

  PetData({
    required this.name,
    required this.variant,
    required this.age,
    required this.gender,
  });
}

List<PetData> petList = [
  PetData(name: 'Fluffy', variant: 'Dog', age: 2, gender: Gender.male),
  PetData(name: 'Whiskers', variant: 'Cat', age: 3, gender: Gender.female),
  // Add more pet data as needed
];