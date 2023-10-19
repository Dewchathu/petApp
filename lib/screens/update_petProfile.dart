import 'package:flutter/material.dart';
import 'package:my_new_project/screens/data.dart';

class UpdatePetProfilePage extends StatelessWidget {
  final PetData petData;
  const UpdatePetProfilePage({Key? key, required this.petData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: const Text(
            'Update Pet Profile',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PetForm(petData: petData), // Pass petData to PetForm
        ),
      ),
    );
  }
}

class PetForm extends StatefulWidget {
  final PetData petData; // Declare petData as a parameter

  PetForm({required this.petData}); // Constructor to receive petData

  @override
  createState() => _PetFormState();
}

class _PetFormState extends State<PetForm> {
  late final PetData petData;

  @override
  void initState() {
    super.initState();
    petData = widget.petData; // Initialize petData in initState
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: SingleChildScrollView(
        child: Container(
          width: 300,
          height: 500,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/add_image.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: petData.name),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: petData.variant),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: '${petData.gender}'),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: '${petData.age}'),
                  validator: (value) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA6CF6F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: const Size(100, 50),
                  ),
                  onPressed: () {},
                  child: const Text('Update'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
