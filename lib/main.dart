import 'package:flutter/material.dart';
import 'package:multibloc/dependencies_container.dart' as di;
import 'package:multibloc/routes.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: AppRoutes.home,
    );
  }
}
