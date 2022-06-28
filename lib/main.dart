import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bind Test',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
      },
      initialRoute: "/",
    );
  }
}
