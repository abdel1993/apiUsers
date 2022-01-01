import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:newusers/Models/users.dart';

class FecthApi {
  Future<List<Users>> fetchUsers() async {
    String url = "https://jsonplaceholder.typicode.com/users";
    http.Response response = await http.get(Uri.parse(url));

    var dataBody = jsonDecode(response.body);
    List<Users> user = [];
    if (response.statusCode == 200) {
      for (var item in dataBody) {
        Users u = Users.fromJson(item);
        user.add(u);
      }
      // return Users.fromJson(dataBody);
    } else {
      print("request failed with status : ${response.statusCode}");
    }
    print(user.length);
    return user;
  }
}
