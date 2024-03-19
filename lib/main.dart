import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 1, 5)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login Screen App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ))),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child: Text(
              "Codeplayon",
              style: TextStyle(
                  color: Color.fromARGB(255, 147, 147, 241),
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 30, end: 30),
            child: TextField(
              controller: password,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
          ),
          TextButton(
              onPressed: () => (),
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color.fromARGB(255, 152, 152, 244),
                  fontWeight: FontWeight.w700,
                ),
              )),
          Container(
            padding: EdgeInsets.fromLTRB(145, 5, 145, 5),
            margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 138, 138, 234)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Does not have account?',
              ),
              TextButton(
                  onPressed: () => (),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 152, 152, 244),
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
