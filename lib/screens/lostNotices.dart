import 'package:flutter/material.dart';
import 'package:my_new_project/screens/custom_drawer.dart';
import 'package:my_new_project/screens/data.dart';

class LostNoticesPage extends StatelessWidget {
  const LostNoticesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text(
          'Lost Pet Notice',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LostPetForm(),
      ),
    );
  }
}

class LostPetForm extends StatefulWidget {
  @override
  _LostPetFormState createState() => _LostPetFormState();
}

class _LostPetFormState extends State<LostPetForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController lostDateController = TextEditingController();
  final TextEditingController lastSeenLocationController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        lostDateController.text = picked.toLocal().toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) => Center(
    child: SingleChildScrollView(
      child: Container(
        width: 300,
        height: 600, // Adjust the height as needed
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
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/add_image.png', // Add the path to your image
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Pet Name'),
                validator: (value) {
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Species'),
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
              TextFormField(
                decoration: const InputDecoration(labelText: 'Color'),
                validator: (value) {
                  return null;
                },
              ),
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: IgnorePointer(
                  child: TextFormField(
                    controller: lostDateController,
                    decoration: const InputDecoration(labelText: 'Lost Date'),
                    validator: (value) {
                      return null;
                    },
                  ),
                ),
              ),
              TextFormField(
                controller: lastSeenLocationController,
                decoration: const InputDecoration(labelText: 'Last Seen Location'),
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Form data is valid, perform necessary actions
                  }
                },
                child: const Text('Submit Form'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}