import 'dart:ffi';

import 'package:aplitapp/firestore.dart';
import 'package:aplitapp/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aplitapp/models.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Chapter>>(
      future: FirestoreService().getChapters(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return Center(
            child: Text('ISSUE'),
          );
        } else if (snapshot.hasData) {
          var chapters = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: const Text('Chapters', style: TextStyle()),
              centerTitle: true,
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 5.0,
              crossAxisCount: 2,
              children: chapters
                  .map((chapter) => OutlinedButton(
                        child: Text(chapter.chapter),
                        onPressed: () {
                          print('pressed!');
                        },
                      ))
                  .toList(),
            ),
          );
        } else {
          return const Text('No Topics found in Firestore!');
        }
      },
    );
  }
}
