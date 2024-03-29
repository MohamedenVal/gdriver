import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'homepage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home page')),
      body: MaterialButton(
        onPressed: () {
          DatabaseReference ref =
              FirebaseDatabase.instance.ref().child('testing');

          ref.set('testing connection');
        },
        color: Colors.blue,
        minWidth: 200,
        child: Text('Test Connection!'),
      ),
    );
  }
}
