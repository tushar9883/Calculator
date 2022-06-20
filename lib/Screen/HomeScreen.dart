import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final mycontrol = TextEditingController();
  var textdisplay = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mycontrol,
              style: TextStyle(fontSize: 44.sp, color: Colors.black),
              decoration: InputDecoration.collapsed(
                  hintText: '0',
                  hintStyle: TextStyle(fontSize: 44.sp, color: Colors.black)),
              textAlign: TextAlign.center,
              autofocus: true,
              keyboardType: TextInputType.none,
            ),
            SizedBox(
              height: 51.h,
            ),
            Container(
              padding: EdgeInsets.all(10.h),
              margin: EdgeInsets.only(left: 50.h, right: 50.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          const newText = '1';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '2';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '3';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          const newText = '4';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '5';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '6';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          const newText = '7';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '8';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '9';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          const newText = '.';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                          );
                        },
                        child: Text(
                          ".",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                        onTap: () {
                          const newText = '0';
                          final updatedText = mycontrol.text + newText;
                          mycontrol.value = mycontrol.value.copyWith(
                            text: updatedText,
                            // selection: TextSelection.collapsed(
                            //     offset: updatedText.length),
                          );
                        },
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 40.sp),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      InkWell(
                          onTap: () {
                            if (mycontrol.text.isEmpty) {
                              print("-----${mycontrol.text}-");
                            } else {
                              final res = mycontrol.text
                                  .substring(0, mycontrol.text.length - 1);
                              print(
                                  "<<<<<<<<<<<${mycontrol.text.substring(0, mycontrol.text.length - 1)}");
                              mycontrol.value =
                                  mycontrol.value.copyWith(text: res);
                            }
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                      SizedBox(
                        width: 40.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
