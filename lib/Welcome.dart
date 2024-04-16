import 'package:flutter/material.dart';

class MyWelcome extends StatefulWidget {
  const MyWelcome({Key? key}) : super(key: key);

  @override
  State<MyWelcome> createState() => _MyOpeningState();
}

class _MyOpeningState extends State<MyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/w1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        chi
        ld: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Class_6',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: '\nMath solution App',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/book.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'chapters');
                },
                child: Text('GET STARTED'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
