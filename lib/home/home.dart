import 'package:aplitapp/firestore.dart';
import 'package:aplitapp/models.dart';
import 'package:aplitapp/topics/topics.dart';
import 'package:flutter/material.dart';
import 'package:aplitapp/loading.dart';
import 'package:aplitapp/shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TopicsScreen();
  }
}
