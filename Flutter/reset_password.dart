import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forgot Password Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Forgot \nPassword',
                 textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'New Password',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 20.0),
             
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'email@email.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print('Pedido de redefinição de senha enviado');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                  child: Text(
                    'send',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
