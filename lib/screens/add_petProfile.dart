import 'package:flutter/material.dart';

class AddPetProfilePage extends StatelessWidget {
  const AddPetProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: const Text(
            'Add Pet Profile',
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
          child: PetForm(),
        ),
      ),
    );
  }
}

class PetForm extends StatefulWidget {
  @override
  createState() => _PetFormState();
}

class _PetFormState extends State<PetForm> {

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
                  decoration:
                  const InputDecoration(labelText: 'Pet Name'),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration:
                  const InputDecoration(labelText: 'Species'),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Breed'),
                  validator: (value) {
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
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
                  onPressed: () {
                  },
                  child: const Text('Add Pet'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
