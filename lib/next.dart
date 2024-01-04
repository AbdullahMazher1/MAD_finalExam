import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  TextEditingController dashname = TextEditingController();
  TextEditingController dashprice = TextEditingController();
  TextEditingController restaurantid = TextEditingController();
  TextEditingController dashid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                size: 40.0,
                color: Colors.blue,
              ),
              SizedBox(height: 16.0),
              dashidf(controller: dashid),
              Text(
                'auto generated',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w100),
              ),
              SizedBox(height: 16.0),
              dashnamef(controller: dashname),
              SizedBox(height: 16.0),
              dashpricef(controller: dashprice),
              SizedBox(height: 16.0),
              restaurantidf(controller: restaurantid),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

class dashnamef extends StatelessWidget {
  final TextEditingController controller;

  dashnamef({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter here',
        labelText: 'Dashname',
        prefixIcon: Icon(
          Icons.production_quantity_limits,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class dashpricef extends StatelessWidget {
  final TextEditingController controller;

  dashpricef({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter here',
        labelText: 'Dash Price', // Corrected label text
        prefixIcon: Icon(
          Icons.production_quantity_limits,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class restaurantidf extends StatelessWidget {
  final TextEditingController controller;

  restaurantidf({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter here',
        labelText: 'Restaurant Id',
        prefixIcon: Icon(
          Icons.production_quantity_limits,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class dashidf extends StatelessWidget {
  final TextEditingController controller;

  dashidf({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter here',
        labelText: 'Dash Id',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
