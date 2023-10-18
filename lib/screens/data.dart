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


class Profile {
   String username;
   String email;
   String mobile;
  final String road;
  final String city;
  final String province;
  final String password;  // Add this line to include the password

  Profile({
    required this.username,
    required this.email,
    required this.mobile,
    required this.road,
    required this.city,
    required this.province,
    required this.password,  // Add this line to include the password
  });
}

List<Profile> profiles = [
  Profile(
    username: 'john_doe',
    email: 'john.doe@example.com',
    mobile: '+1234567890',
    road: 'Sample Road',
    city: 'Sample City',
    province: 'Sample Province',
    password: '987456',  // Add a placeholder password for demonstration
  ),
  // Add more profiles if needed
];

class Medication {
  final String medicine;
  final int numberOfTablets;
  final String time;

  Medication({
    required this.medicine,
    required this.numberOfTablets,
    required this.time,
  });
}

class Allergy {
  final String allergy;
  final String description;

  Allergy({
    required this.allergy,
    required this.description,
  });
}

class Meal {
  final String time;
  final String foodName;
  final String amount;
  final String notes;

  Meal({
    required this.time,
    required this.foodName,
    required this.amount,
    required this.notes,
  });
}

class Vaccination {
  final String vaccineName;
  final String dose;
  final String date;

  Vaccination({
    required this.vaccineName,
    required this.dose,
    required this.date,
  });
}

class Reminder {
  final String reminderName;
  final String time;
  final String date;

  Reminder({
    required this.reminderName,
    required this.time,
    required this.date,
  });
}
// Sample medications
final List<Medication> sampleMedications = [
  Medication(medicine: 'Medicine A', numberOfTablets: 2, time: 'Morning'),
  Medication(medicine: 'Medicine B', numberOfTablets: 1, time: 'Night'),
  Medication(medicine: 'Medicine C', numberOfTablets: 1, time: 'Night'),
];

// Sample allergies
final List<Allergy> sampleAllergies = [
  Allergy(allergy: 'Pollen', description: 'Allergic to pollen'),
  Allergy(allergy: 'Dust', description: 'Allergic to dust mites'),
];

// Sample meals
final List<Meal> sampleMeals = [
  Meal(time: 'Breakfast', foodName: 'Dog Food', amount: '250g', notes: 'Special meal'),
  Meal(time: 'Dinner', foodName: 'Dry Food', amount: '200g', notes: ''),
];

// Sample vaccinations
final List<Vaccination> sampleVaccinations = [
  Vaccination(vaccineName: 'Vaccine 1', dose: '1st Dose', date: '2023-10-15'),
  Vaccination(vaccineName: 'Vaccine 2', dose: '2nd Dose', date: '2023-11-15'),
];

// Sample reminders
final List<Reminder> sampleReminders = [
  Reminder(reminderName: 'Walk', time: '08:00 AM', date: '2023-10-16'),
  Reminder(reminderName: 'Grooming', time: '03:00 PM', date: '2023-10-18'),
];
