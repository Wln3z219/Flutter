import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'package:flutter_application_1/httpbasic.dart';
import 'package:flutter_application_1/my_listpage.dart';
import 'Homepage.dart';
import 'login.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                icon: const Icon(Icons.bolt),
              ),
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

              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text("Go to Login Page"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Httpbasic()),
                  );
                },
                child: const Text("Go to HttpBasic Page"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailPage(productId: 0)),
                  );
                },
                child: const Text("Go to HttpBasic Page"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyListPage()),
                  );
                },
                child: const Text("Go to List Page"),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
