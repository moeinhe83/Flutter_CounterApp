import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[200],
        appBar: AppBar(
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Info(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.info,
                    color: Colors.black,
                    size: 30,
                  ),
                );
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Water Counter",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}

// ==================== /* Info */ ====================
class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.backspace,
              size: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Info Page",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "Greetings and welcome to \n the Water Counter \n program 😊",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
