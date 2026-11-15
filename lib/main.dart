import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const IMQApp());
}

class IMQApp extends StatelessWidget {
  const IMQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMQ Family Call and Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB76E79),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
