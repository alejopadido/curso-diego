import 'package:dieguin_app/Providers/projectTaskProvider.dart';
import 'package:dieguin_app/Providers/taskTodayProvider.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => PercentTaskProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => Tasktodayprovider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home_Screen(),
    );
  }
}
