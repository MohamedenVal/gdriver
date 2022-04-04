import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gdriver/screens/homepage.dart';
import 'dart:io';

import 'package:gdriver/screens/registrationpage.dart';
import 'package:gdriver/screens/vehiculeinfo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "gtaxi",
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAws8QKJR6bNjKum0wYL8OSMvpVj2GDb5c',
      appId: '1:345902005663:android:b20ee9f468a0b06c5d11aa',
      messagingSenderId: '345902005663',
      projectId: 'gtaxi-261d7',
      databaseURL:
          'https://gtaxi-261d7-default-rtdb.europe-west1.firebasedatabase.app',
      storageBucket: 'gtaxi-261d7.appspot.com',
    ),
  );

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: VehiculeInfo.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        RegistrationPage.id: (context) => RegistrationPage(),
        VehiculeInfo.id: (context) => VehiculeInfo(),
      },
    );
  }
}
