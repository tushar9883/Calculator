import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/Firebase/Firestore_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FireStore extends StatefulWidget {
  const FireStore({Key? key}) : super(key: key);

  @override
  State<FireStore> createState() => _FireStoreState();
}

class _FireStoreState extends State<FireStore> {
  final name_con = TextEditingController();
  final Mobile_Con = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.h),
              child: TextField(
                style: TextStyle(fontSize: 20.sp),
                decoration: const InputDecoration(hintText: "Name"),
                controller: name_con,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.h),
              child: TextField(
                style: TextStyle(fontSize: 20.sp),
                keyboardType: TextInputType.number,
                maxLength: 10,
                minLines: 1,
                decoration: const InputDecoration(hintText: "Mobile"),
                controller: Mobile_Con,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                final name = name_con.text;
                final mobile = Mobile_Con.text;
                name_con.clear();
                CreateUser(name: name, mobile: mobile);
                Mobile_Con.clear();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShowData()),
                );
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }

  Future CreateUser({required String name, required String mobile}) async {
    final docUser = FirebaseFirestore.instance.collection('user').doc();
    final json = {'name': name, 'mobile': mobile};
    await docUser.set(json);
  }
}
