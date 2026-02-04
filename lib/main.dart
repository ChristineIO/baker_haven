import 'package:baker_haven/widgets/profile_pill.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart' show HomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baker\'s Haven',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(245, 191, 227, 1.0),
        ),
      ),
      home: const MyHomePage(title: 'Baker\'s Haven'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 220,
        surfaceTintColor: Colors.pink.shade700,
        title: SizedBox(
          height: 250,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Banner
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/banner_icons.png',
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),

              // Profile pill
              ProfilePill(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(child: HomePage()),
    );
  }
}
