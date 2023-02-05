import 'package:aplitapp/about/about.dart';
import 'package:aplitapp/home/home.dart';
import 'package:aplitapp/book/book.dart';
import 'package:aplitapp/topics/topics.dart';

var appRoutes = {
  '/topics': (context) => const TopicsScreen(),
  '/book': (context) => const BookScreen(),
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
};
