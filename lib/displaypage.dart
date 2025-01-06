import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String username;

  const DisplayPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DisplayPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello,',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                username.isEmpty ? 'No username entered' : username,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
