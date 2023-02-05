import 'package:aplitapp/about/about.dart';
import 'package:aplitapp/home/home.dart';
import 'package:aplitapp/profile/profile.dart';
import 'package:aplitapp/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/about': (context) => const AboutScreen(),
};
