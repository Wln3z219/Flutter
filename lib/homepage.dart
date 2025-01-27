import 'package:flutter/material.dart';
import 'welcome.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String _output = '';
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final _textController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leadinbg icon pressed');
          },
        
        ),
        actions: [
          IconButton(icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Welcome())
            );
          },
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'Charge time Calculator',
                style: TextStyle(fontSize: 26),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Current SOC % :"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController1,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'CSOC',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Target SOC % :"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController2,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'TSOC',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Charge Rate A :"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController3,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'Charge Rate A',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Volt :"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController4,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'Volt',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Battery Cap. kWh:"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController5,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'Battery',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text("Efficiency %:"),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController6,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Insert Here",
                            labelText: 'Eff',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text('$_output'),
              ElevatedButton(
                  onPressed: () {
                    double? input1 = double.tryParse(_textController1.text);
                    double? input2 = double.tryParse(_textController2.text);
                    double? input3 = double.tryParse(_textController3.text);
                    double? input4 = double.tryParse(_textController4.text);
                    double? input5 = double.tryParse(_textController5.text);
                    double? input6 = double.tryParse(_textController6.text);
                    double? power = (input3! * input4!) / 1000;
                    double? time =
                        (input2! - input1!) * input5! / 100 / (power! * input6!);
                    setState(() {
                      _output = 'Charge time (hrs) : $time';
                    });
                    debugPrint('Calculated ....$power&$time');
                  },
                  child: const Text(
                    'OK Button',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
    
  }
}