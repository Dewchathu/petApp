import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_new_project/screens/signup.dart';

import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            Image.asset("assets/images/logo.png", width: 200),
            Image.asset("assets/images/front_image.png", width: 70, height: 250),
            const LoginForm(),
          ],
        ),

      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
   createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Implement authentication logic here

    // For demonstration, print the login details
    print('Username: $username');
    print('Password: $password');

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(

              filled: true,
              fillColor: Colors.white,
              hintText: 'Username',
              contentPadding:
              EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),

              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              )
              ),
          ),
          const SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(

                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding:
                EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),

                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                )
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _login,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)
                ),
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            child: const Text('Log In'),
          ),
          const SizedBox(height: 10),
          const Text("Forget Password"),
          RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Don't have an account",
                  style: TextStyle(
                    color: Colors.black)
                  ),
                  TextSpan(
                    text: " Sign Up",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                      ..onTap = (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInPage()),
                        );
                      }
                  ),
                ]
              )
          ),
        ],
      ),
    );
  }
}