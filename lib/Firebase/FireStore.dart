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

  String? validateMobile(String value) {
    String patttern = r'(/^(\+\d{1,3}[- ]?)?\d{10}$/)';
    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.h),
              child: TextField(
                autofocus: true,
                textInputAction: TextInputAction.next,
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
                textInputAction: TextInputAction.go,
                decoration: const InputDecoration(hintText: "Mobile"),
                controller: Mobile_Con,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                String regexPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
                var regExp = RegExp(regexPattern);
                if (name_con.text.isEmpty || name_con.text.length < 3) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Color(0xfff8eced),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 1),
                    content: Text(
                      "Enter Valid Name",
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 18,
                        fontFamily: 'Strait',
                      ),
                    ),
                  ));
                } else if (Mobile_Con.text.isEmpty ||
                    Mobile_Con.text.length != 10) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Color(0xfff8eced),
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text(
                      "Enter Mobile Number",
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 18,
                        fontFamily: 'Strait',
                      ),
                    ),
                  ));
                } else if (regExp.hasMatch(Mobile_Con.text)) {
                  DateTime now = DateTime.now();
                  DateTime date = DateTime(
                      now.year, now.month, now.day, now.hour, now.minute);
                  print(date);
                  final datee = date.toString();
                  final name = name_con.text;
                  final mobile = Mobile_Con.text;
                  name_con.clear();
                  CreateUser(name: name, mobile: mobile, date: datee);
                  Mobile_Con.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShowData()),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Color(0xfff8eced),
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    content: Text(
                      "SuccessesFully Data Added",
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 18,
                        fontFamily: 'Strait',
                      ),
                    ),
                  ));
                }
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }

  Future CreateUser(
      {required String name,
      required String mobile,
      required String date}) async {
    final docUser = FirebaseFirestore.instance.collection('user').doc();
    final json = {'name': name, 'mobile': mobile, 'date': date};
    await docUser.set(json);
  }
}
