

import 'package:finance_app_provider/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class AuthService with ChangeNotifier{
  

  Box<UserModel>? _userbox;

  Future<void>openBox()async{
    _userbox=await Hive.openBox('user');
  }
  Future<bool>registeruser(UserModel user)async{

  if (_userbox==null) {
    await openBox();
    
  }
  await _userbox!.add(user);
  notifyListeners();
  return true;
}
}
