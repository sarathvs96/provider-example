import 'package:flutter/material.dart';
import 'package:sarathwork/provider/counter_provider.dart';
import 'package:sarathwork/screens/counter.dart';
import 'package:sarathwork/user_provider.dart';
import 'package:sarathwork/userpage.dart';
import 'home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MaterialApp(
        home: UserPage(),
      ),
    );
  }
}