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

class Profile {
  final String username;
  final String mobile;
  final String email;
  final String password;
  final String road;
  final String city;
  final String province;

  Profile({
    required this.username,
    required this.mobile,
    required this.email,
    required this.password,
    required this.road,
    required this.city,
    required this.province,
  });
}

List<PetData> petList = [
  PetData(name: 'Fluffy', variant: 'Dog', age: 2, gender: Gender.male),
  PetData(name: 'Whiskers', variant: 'Cat', age: 3, gender: Gender.female),
  // Add more pet data as needed
];


List<Profile> profiles = [
  Profile(
    username: 'john.doe',
    email: 'john.doe@example.com',
    password: '123456',
    mobile: '+1234567890',
    road: 'Sample Road',
    city: 'Sample City',
    province: 'Sample Province',
  ),
  // Add more profiles as needed
];
