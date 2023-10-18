import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'data.dart';

class PetProfilePage extends StatelessWidget {
  final PetData petData;
  final List<Medication> medications;
  final List<Allergy> allergies;
  final List<Meal> meals;
  final List<Vaccination> vaccinations;
  final List<Reminder> reminders;

  const PetProfilePage({
    Key? key,
    required this.petData,
    required this.medications,
    required this.allergies,
    required this.meals,
    required this.vaccinations,
    required this.reminders,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE6E6E6),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Image.asset('assets/images/icon_logo.png'),
                onPressed: () {
                  // Add the action for this icon
                },
              ),
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/pet_profile_bg.png',
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(height: 0),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                      AssetImage('assets/images/front_image.png'),
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          petData.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          petData.variant,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${petData.age} years old',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    Tab(text: 'Health'),
                    Tab(text: 'Meal'),
                    Tab(text: 'Vaccine'),
                    Tab(text: 'Reminders'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Medications',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          _showAddMedicationDialog(context);
                                        },
                                        icon: const Icon(Icons.add),
                                        label: const Text('Add'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.delete),
                                        label: const Text('Remove'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200.0, // Adjust height as needed
                              child: ListView.builder(
                                itemCount: medications.length,
                                itemBuilder: (context, index) {
                                  Medication medication = medications[index];
                                  return Card(
                                    color: const Color(0xFFE6E6E6),
                                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0), // Add padding
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align data1 and data2 to the right
                                        children: [
                                          Text(
                                            medication.medicine,
                                            style: const TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end, // Align text to the end (right side)
                                            children: [
                                              Text('${medication.numberOfTablets}'),
                                              Text(medication.time),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );

                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Allergies',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          _showAddAllergyDialog(context);
                                        },
                                        icon: const Icon(Icons.add),
                                        label: const Text('Add'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.delete),
                                        label: const Text('Remove'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 180.0, // Adjust height as needed
                              child: ListView.builder(
                                itemCount: allergies.length,
                                itemBuilder: (context, index) {
                                  Allergy allergy = allergies[index];
                                  return Card(
                                    elevation: 0,
                                    color: Colors.white,
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0), // Add padding
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start, // Align data1 and data2 to the left
                                        crossAxisAlignment: CrossAxisAlignment.start, // Align data1 and data2 to the left
                                        children: [
                                          Text(
                                            allergy.allergy, // Topic
                                            style: const TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),Row(
                                            children: [
                                              const SizedBox(width: 30),
                                              Text(allergy.description),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  );

                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Meals',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.edit),
                                        label: const Text('Edit'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          _showAddMealDialog(context);
                                        },
                                        icon: const Icon(Icons.add),
                                        label: const Text('Add'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.delete),
                                        label: const Text('Remove'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200.0, // Adjust height as needed
                              child: ListView.builder(
                                itemCount: meals.length,
                                itemBuilder: (context, index) {
                                  Meal meal = meals[index];
                                  return Card(
                                    color: Color(0xFFE6E6E6),
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0), // Add padding
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align data1 and data2 to the right
                                        children: [
                                          Text(
                                            meal.foodName,
                                            style: TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end, // Align text to the end (right side)
                                            children: [
                                              Text('data2'),
                                              Text('data3'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Vaccine',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          _showAddVaccinationDialog(context);
                                        },
                                        icon: const Icon(Icons.add),
                                        label: const Text('Add'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.delete),
                                        label: const Text('Remove'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200.0, // Adjust height as needed
                              child: ListView.builder(
                                itemCount: 10, // Replace with the actual item count
                                itemBuilder: (context, index) {
                                  // Replace with your card content based on the index
                                  return const Card(
                                    color: Color(0xFFE6E6E6),
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0), // Add padding
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align data1 and data2 to the right
                                        children: [
                                          Text(
                                            'data1',
                                            style: TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end, // Align text to the end (right side)
                                            children: [
                                              Text('data2'),
                                              Text('data3'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Reminder',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () {
                                          _showAddReminderDialog(context);
                                        },
                                        icon: const Icon(Icons.add),
                                        label: const Text('Add'),
                                      ),
                                      TextButton.icon(
                                        onPressed: () {
                                          // Add onPressed action for "Edit"
                                        },
                                        icon: const Icon(Icons.delete),
                                        label: const Text('Remove'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 200.0, // Adjust height as needed
                              child: ListView.builder(
                                itemCount: 10, // Replace with the actual item count
                                itemBuilder: (context, index) {
                                  // Replace with your card content based on the index
                                  return const Card(
                                    color: Color(0xFFE6E6E6),
                                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0), // Add padding
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align data1 and data2 to the right
                                        children: [
                                          Text(
                                            'data1',
                                            style: TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end, // Align text to the end (right side)
                                            children: [
                                              Text('data2'),
                                              Text('data3'),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),



              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _showAddMedicationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Medication'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Medicine'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Number of Tablets'),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Time'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                // Add logic to handle adding the medication here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showAddAllergyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Allergy'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Allergy'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Description'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add logic to handle adding the allergy here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Future<void> _showAddMealDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Meal'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Time'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Food Name'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Amount'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Notes'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add logic to handle adding the meal here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Future<void> _showAddVaccinationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Vaccination'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Vaccine Name'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Dose'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add logic to handle adding the vaccination here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showAddReminderDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Reminder'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Reminder Name'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Time'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Date'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add logic to handle adding the reminder here
                // Extract the values from the text fields and process accordingly
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


}