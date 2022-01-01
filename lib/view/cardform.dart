import 'package:flutter/material.dart';
import 'package:newusers/Models/address.dart';

class CardForm extends StatefulWidget {
  var name;
  var id;
  var address;
  var address1;
  var email;

  CardForm(
      {Key? key, this.name, this.id, this.email, this.address, this.address1})
      : super(key: key);

  @override
  _CardFormState createState() =>
      _CardFormState(name, id, address, email, address1);
}

class _CardFormState extends State<CardForm> {
  String name;
  int id;
  var address;
  var address1;
  String email;
  _CardFormState(this.name, this.id, this.address, this.email, this.address1);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Text(id.toString()),
              title: Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  email,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Lat :  $address",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Lng :  $address1",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                //const SizedBox(width: 16),
                TextButton(
                  child: const Text('Show More'),
                  onPressed: () {/* ... */},
                ),
                //const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
