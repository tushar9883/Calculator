import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import 'FireStore.dart';

class ShowData extends StatefulWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  final col_ref = FirebaseFirestore.instance
      .collection('user')
      .orderBy('date', descending: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: StreamBuilder(
                stream: col_ref.snapshots(),
                builder:
                    (context, AsyncSnapshot<QuerySnapshot> streamSnapshort) {
                  if (streamSnapshort.hasData) {
                    return ListView.builder(
                        itemCount: streamSnapshort.data!.docs.length,
                        itemBuilder: (context, index) {
                          final DocumentSnapshot documentSnapshot =
                              streamSnapshort.data!.docs[index];
                          return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                                title: Text(documentSnapshot['name']),
                                subtitle: Text(documentSnapshot['mobile'])),
                          );
                        });
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                highlightColor: Colors.blue,
                color: Colors.white,
                onPressed: () {
                  final _utcTime = DateTime.now().toUtc();
                  final Localtime = _utcTime.toLocal();
                  print("..........>>>>>> ${Localtime}");
                  print(".......... ${_utcTime}");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FireStore()),
                  );
                },
                child: const Text("Add Data"),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
