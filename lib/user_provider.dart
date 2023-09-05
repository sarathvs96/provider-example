import 'package:flutter/material.dart';
import 'package:sarathwork/api_service.dart';

class UserProvider extends ChangeNotifier{
  var _users=[];
  get users => _users;
  ApiService apiService =ApiService();

  Future<void>getUsers()async{
    print("get user called");
    apiService.fetchUsers().then((value) {_users=value;
    notifyListeners();
    });

  }

}