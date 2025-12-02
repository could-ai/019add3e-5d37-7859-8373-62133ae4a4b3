import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/cause_list_screen.dart';
import 'screens/case_status_screen.dart';
import 'screens/notice_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'कर्जा असुली न्यायाधिकरण',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Official Blue Color Scheme
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1),
          primary: const Color(0xFF0D47A1),
          secondary: const Color(0xFFC62828), // Red for highlights
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF0D47A1),
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/cause-list': (context) => const CauseListScreen(),
        '/case-status': (context) => const CaseStatusScreen(),
        '/notices': (context) => const NoticeScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
