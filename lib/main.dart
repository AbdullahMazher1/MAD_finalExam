import 'dart:html';
import 'package:flutter/material.dart';
import 'configuration.dart';
import 'next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController1 = TextEditingController();
  TextEditingController nameController2 = TextEditingController();
  TextEditingController nameController3 = TextEditingController();
  Con myObject = Con();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Final Paper'),
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: primaryColor,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 20),
                onPressed: () {
                  // Handle menu button press
                },
              );
            },
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Food Odering App',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'Please Verify Yourself & enjoy',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Image.asset('assets/im/o.jpeg', width: 170, height: 170),
                SizedBox(height: 10),
                NameTextBox(controller: nameController1),
                SizedBox(height: 10),
                EmailTextBox(controller: nameController2),
                SizedBox(height: 10),
                PasswordTextBox(controller: nameController3),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                    String name = nameController1.text;
                    String email = nameController2.text;
                    String password = nameController3.text;
                    myObject.registerUser(name, email, password);
                    print('Data has been entered');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(
                      color: primaryColor,
                      width: 2.0,
                    ),
                  ),
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NameTextBox extends StatelessWidget {
  final TextEditingController controller;

  NameTextBox({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter here',
        labelText: 'Name',
        prefixIcon: Icon(
          Icons.person,
          color: primaryColor,
        ),
        fillColor: primaryColor,
        hoverColor: primaryColor,
        focusColor: Colors.blueAccent,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class EmailTextBox extends StatelessWidget {
  final TextEditingController controller;

  EmailTextBox({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your Username',
        labelText: 'Username',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class PasswordTextBox extends StatelessWidget {
  final TextEditingController controller;

  PasswordTextBox({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Enter your Password',
        labelText: 'Password',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

const Color primaryColor = Color.fromARGB(255, 4, 99, 177);
