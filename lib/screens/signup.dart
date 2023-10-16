import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_new_project/screens/login.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_screen.png"), fit: BoxFit.cover
            )
        ),

        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            const SizedBox(height: 20.0),
            Image.asset("assets/images/logo.png", width: 100, height: 150),
            Image.asset("assets/images/front_image.png", width: 100, height: 180),
            const SignInForm(),
          ],
        ),

      ),
    );
  }
}



class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
   createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  final TextEditingController _roadController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _provinceController = TextEditingController();


  void _signIn() {
    String user = _userController.text;
    String mobile = _mobileController.text;
    String email = _emailController.text;
    String road = _roadController.text;
    String city = _cityController.text;
    String province = _provinceController.text;
    String password = _passwordController.text;
    String repassword = _repasswordController.text;

    // Implement sign-in logic here

    // For demonstration, print the sign-in details
    print('User: $user');
    print('Mobile: $mobile');
    print('Email: $email');
    print('Password: $password');
    print('Repassword: $repassword');
    print('Road: $road');
    print('City: $city');
    print('Province: $province');

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _userController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Username',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),

              ),
              const SizedBox(width: 10.0), // Add some spacing between the text fields
              Expanded(
                child: TextField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Mobile No',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Email',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(width: 10.0), // Add some spacing between the text fields
              Expanded(
                child: TextField(
                  controller: _repasswordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Re Enter pwd',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Address",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),

          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _roadController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Road/Lane',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(width: 10.0), // Add some spacing between the text fields
              Expanded(
                child: TextField(
                  controller: _provinceController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'City',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _cityController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFA6CF6F),
                    hintText: 'Province',
                    contentPadding: const EdgeInsets.all(14.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _signIn,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Sign Up'),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "I already have an account",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: " Log In",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}