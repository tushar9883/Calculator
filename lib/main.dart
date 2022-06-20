import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Firebase/FireStore.dart';
import 'Firebase/Firestore_list.dart';
import 'Screen/HomeScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (_, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const Home_Screen(),
        //home: const FireStore(),
        home: const ShowData(),
      ),
    );
  }
}
