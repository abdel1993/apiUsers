import 'package:flutter/material.dart';
import 'package:newusers/Models/users.dart';
import 'package:newusers/api/fetchapi.dart';

import 'cardform.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FecthApi _fecthApi = FecthApi();
  List<Users> user = [];
  bool isLoading = true;

  @override
  void initState() {
    _fecthApi.fetchUsers().then((value) {
      setState(() {
        isLoading = false;
        user = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("USERS"),
      ),
      body: FutureBuilder(
          future: _fecthApi.fetchUsers(),
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return CardForm(
                    name: user[index].name,
                    id: user[index].id,
                    email: user[index].email,
                    address: user[index].address.geo.lat,
                    address1: user[index].address.geo.lng,
                  );
                });
          }),
    );
  }
}
