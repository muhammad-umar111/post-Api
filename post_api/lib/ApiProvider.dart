import 'dart:convert';

import 'package:http/http.dart';

signUp(String email,String password)async{
  try {
    Response response=await post(Uri.parse('https://reqres.in/api/login'),body:{
    'email':email,
    'password':password
  } );
  if (response.statusCode==200) {
    var data=jsonDecode(response.body.toString());
    print(data['token']);
    print('Account Login Successfully');
  } else {
    print('failed');
  }
  } catch (e) {
    throw Exception(e.toString());
  }
 
}