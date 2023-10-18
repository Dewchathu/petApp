import 'package:flutter/material.dart';
import 'package:my_new_project/screens/PetProfile.dart';
import 'package:my_new_project/screens/custom_drawer.dart';
import 'data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void _goToPetProfile(BuildContext context, PetData petData) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PetProfilePage(
          petData: petData,
          medications: sampleMedications,
          allergies : sampleAllergies,
          meals: sampleMeals,
          vaccinations: sampleVaccinations,
          reminders: sampleReminders,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            SizedBox(width: 8.0),
            Text(
              'Vihanga, Sri Lanka',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/front_image.png'),
          ),
          SizedBox(width: 16.0),
        ],
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/dash_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                _buildSearchBar(),
                const SizedBox(height: 20.0),
                Expanded(child: _buildCardList()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return const TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search Pet',
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildCardList() {
    return ListView.builder(
      itemCount: petList.length,
      itemBuilder: (context, index) {
        return _buildPetCard(petList[index]);
      },
    );
  }

  Widget _buildPetCard(PetData petData) {
    return GestureDetector(
      onTap: () {
        _goToPetProfile(context, petData);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/front_image.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      Container(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(height: 5),
                            Text(
                              petData.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            Container(height: 5),
                            Text(
                              petData.variant,
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Container(height: 10),
                            Text(
                              'Age: ${petData.age} years',
                              style: const TextStyle(
                                color: Colors.grey,
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
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  petData.gender == Gender.male
                      ? Icons.male
                      : Icons.female,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
