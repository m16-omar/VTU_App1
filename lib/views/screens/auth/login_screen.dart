import 'package:flutter/material.dart';
import 'package:multistor/views/screens/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String email;

  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Account',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
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
                    )),
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
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    print('Logged in');

                    print(email);
                    print(password);
                  } else {
                    print('unable to unauthenticate user');
                  }
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(
                        10,
                      )),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'Need An Account?',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
