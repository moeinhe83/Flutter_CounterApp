import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// ==================== /* MyApp */ ====================
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
          backgroundColor: Colors.white,
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
        body: HomePage(),
      ),
    );
  }
}

// ==================== /* HomePage */ ====================
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int record = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "💧 Drink Water! 💧",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/image/water.jpg",
                height: 150,
                width: 150,
              ),
              SizedBox(width: 50),
              Text(
                "Record = $record",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          SizedBox(height: 70),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              setState(() {
                record += 1;
              });
            },
            child: Text(
              "Add Record",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ],
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
            SizedBox(height: 50),
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blueAccent[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "moeinit.com",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
