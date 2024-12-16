import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charging Cal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.green),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 140, 0, 255)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Charging Cal")),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Current SOC%"),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
