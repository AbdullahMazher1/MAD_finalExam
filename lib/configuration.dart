import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Con{
  void registerUser(String name, String email, String password) async {
  try {
    var regBody = {"name": name, "email": email, "password": password};
    var response = await http.post(
      Uri.parse('http://localhost:3000/api/registration'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(regBody),
    );
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  } catch (e) {
    print("Error: $e");
  }
}
}
