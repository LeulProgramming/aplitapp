import 'dart:async';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:aplitapp/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Topic>> getTopics() async {
    var ref = _db.collection('topics');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());
    var topics = data.map((d) => Topic.fromJson(d));
    return topics.toList();
  }

  Future<List<Chapter>> getChapters() async {
    var ref = _db.collection('chapters');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((e) => e.data());
    var chapters = data.map((e) => Chapter.fromJson(e));
    return chapters.toList();
  }
}
