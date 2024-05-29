import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:tufind/Controllers/UrlData.dart';

class RegisterService {
  static Future<Response> register(
      String name, String email, String pass) async {
    Map<String, String> json = {
      "name": name,
      "email": email,
      "password": pass,
    };
    print(json);
    return await http.post(
      Uri.parse(UrlData.getRegisterUrl()),
      body: jsonEncode(json),
    );
  }
}
