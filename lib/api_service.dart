import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/User.dart';

class ApiService {
  Future<List<User>> fetchUsers() async {
    print("fetch user called");
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var getUsersData = json.decode(response.body) as List;
      var listUsers = getUsersData.map((i) => User.fromJson(i)).toList();
      print("data returned");
      return listUsers;
    } else {
      throw Exception('Failed to load users');
    }
  }
}