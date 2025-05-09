import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: const Color.fromARGB(255, 5, 104, 185)),
        scaffoldBackgroundColor: const Color.fromARGB(221, 226, 236, 236),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Meu app',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/image/logo.png', width: 300),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(28, 99, 156, 1),
                ),
                child: Text(
                  'Iniciar',
                  style: TextStyle(fontSize: 43, color: Colors.white),
                ),

                onPressed: () {
                  Navigator.pushNamed(context, 'Quiz');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
