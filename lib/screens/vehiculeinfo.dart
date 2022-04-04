// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class VehiculeInfo extends StatefulWidget {
  const VehiculeInfo({Key? key}) : super(key: key);

  static const String id = 'vehiculeinfo';

  @override
  State<VehiculeInfo> createState() => _VehiculeInfoState();
}

class _VehiculeInfoState extends State<VehiculeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'images/logo.png',
            height: 110,
            width: 110,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter vehicle details',
                  style: TextStyle(fontFamily: 'Brand-blod', fontSize: 22),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Car Model',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      )),
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
