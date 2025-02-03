import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<String> fetchData() async {
  final response =
      await http.get(Uri.parse('https://itpart.net/mobile/api/product1.php'));
  if (response.statusCode == 200) {
    String strBody = response.body.toString();
    debugPrint(strBody);
    return strBody;
  } else {
    throw Exception("there're problem");
  }
}

class Httpbasic extends StatefulWidget {
  const Httpbasic({super.key});

  @override
  State<Httpbasic> createState() => _HttpbasicState();
}

class _HttpbasicState extends State<Httpbasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('HttpBasic Page'),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return Text('${snapshot.data}', style: TextStyle(fontSize: 18));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}', style: TextStyle(fontSize: 18));
          }
          return const Text('No data available!');
        },
      ),
    );
  }
}