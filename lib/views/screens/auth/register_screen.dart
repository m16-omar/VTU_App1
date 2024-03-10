import 'package:flutter/material.dart';
import 'package:multistor/controllers/auth_controller.dart';
import 'package:multistor/views/screens/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController _authController = AuthController();
  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

  late String email;

  late String fullName;

  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _FormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Register Screen',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 4),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Email Address Must Not Be Empty";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'Enter Email Address',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              fullName = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Full Name Must Be Not Be Empty";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              labelText: 'Full Name',
              hintText: 'Enter Fullname',
              prefixIcon: Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            onChanged: (value) {
              password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Password Must Not Be Empty";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter Password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.purple,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              if (_FormKey.currentState!.validate()) {
                _authController.createNewUser(email, fullName, password);
                print('success');
              } else {
                print('Not Valid');
              }
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            child: Text(
              'Already Have An Account?',
            ),
          ),
        ],
      ),
    ));
  }
}
