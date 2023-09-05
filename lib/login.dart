import 'package:flutter/material.dart';
import 'package:sarathwork/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController usernameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  saveData(String username, String password)async{
    SharedPreferences prefs =await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('password', password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: usernameController,

            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,

            ),
            ElevatedButton(onPressed: (){
              saveData(
                  usernameController.text,
                  passwordController.text
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
                child: Text("Log In",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),))
          ],
        ),
      ),
    );
  }
}
