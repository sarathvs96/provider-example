import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarathwork/user_provider.dart';

import 'models/User.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    final userss = Provider.of<UserProvider>(context);
userss.getUsers();

    return Scaffold(
      appBar: AppBar(
        title: Text("Users",style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.white
        ),),
      ),
      body:
             ListView.separated(
                itemBuilder: (context, index) {
                  var user = userss.users[index];
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          user.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        SizedBox(height: 5),
                        Text(user.email),
                        SizedBox(height: 5),
                        Text(user.address.street +
                            " " +
                            user.address.suite +
                            " " +
                            user.address.city +
                            " " +
                            user.address.zipcode),
                        SizedBox(height: 5),
                        Text(user.phone),
                        SizedBox(height: 5),
                        Text(user.website),
                        SizedBox(height: 5),
                        Text(user.company.name),
                        SizedBox(height: 5),
                        Text(user.company.catchPhrase),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: userss.users.length)

          );



  }
}
