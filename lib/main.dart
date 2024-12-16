import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.green),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 140, 0, 255))),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("MobileApp")),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(child: Image.asset("assets/images/panda.png")),
              const Text(
                "ขอบคุณที่ใช้บริการ",
                style: TextStyle(fontSize: 30),
              ),
              const Text("เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ"),
              const SizedBox(
                height: 20,
              ),
              const Text("สรุปรายละเอียดการชาร์จ"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      Text("วันที่ชาร์จ"),
                    ],
                  ),
                  Text("5 กันยายน 2555")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      Text("วันที่ชาร์จ"),
                    ],
                  ),
                  Text("5 กันยายน 2555")
                ],
              ),
          Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const <TableRow>[
            TableRow(
              children: [
                Text(
                  "Volt",
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Virus_Amount",
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  "Energy Amount",
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(),
                ),
              ],
            ),
          ],
        ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '??',
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ],
          ),
        ),

        // appBar: AppBar(
        //   title: const Text("data"),
        //   leading: IconButton(
        //     onPressed: () {
        //       debugPrint("Leading");
        //     },
        //     icon: const Icon(Icons.menu),
        //   ),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         debugPrint("Action1");
        //       },
        //       icon: const Icon(Icons.flag_sharp),
        //     ),
        //     IconButton(
        //       onPressed: () {
        //         debugPrint("Action2");
        //       },
        //       icon: const Icon(Icons.face),
        //     ),
        //   ],
        // ),
        // body: Column(
        //   children: [
        //     const Text(
        //       "Test",
        //       style: TextStyle(fontSize: 36),
        //     ),
        //     const Text(
        //       "Body",
        //       style: TextStyle(fontSize: 36),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         debugPrint("Test");
        //       },
        //       child: const Text(
        //         "Button",
        //         style: TextStyle(fontSize: 30),
        //       ),
        //     ),
        //     Image.asset(
        //       "assets/images/1.jpg",
        //       width: 250,
        //       height: 150,
        //     ),
        //     Row(
        //       children: [
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(Icons.apple),
        //           iconSize: 70,
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(Icons.auto_fix_high),
        //           iconSize: 70,
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(Icons.heart_broken),
        //           iconSize: 70,
        //         ),
        //         const Icon(Icons.router_sharp , size: 70,)
        //       ],
        //     ),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     debugPrint("Test");
        //   },
        //   child: const Icon(Icons.accessible_forward),
        // ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //         title: Text(widget.title),
  //       ),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             const Text(
  //               'You have pushed the button this many aaa times:',
  //             ),
  //             Text(
  //               '$_counter',
  //               style: Theme.of(context).textTheme.headlineMedium,
  //             ),
  //           ],
  //         ),
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: _incrementCounter,
  //         tooltip: 'Increment',
  //         child: const Icon(Icons.add),
  //       ));
  // }
// }
