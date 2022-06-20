import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class ShowData extends StatefulWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  // final databaseRef = FirebaseDatabase.instance.reference().child('user');
  final col_ref = FirebaseFirestore.instance.collection('user');

  // final Stream<QuerySnapshot> user =
  // FirebaseFirestore.instance.collection('user').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: StreamBuilder(
          stream: col_ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshort) {
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
    ));
  }
}
