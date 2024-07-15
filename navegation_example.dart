import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 80.0),
              Text(
                'EMAIL',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'email@email.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'PASSWORD',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '*******',
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
                    // Aqui você pode implementar a lógica de autenticação
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.transparent),
                    elevation: WidgetStateProperty.all<double>(0),
                  ),
                  child: Text(
                    'log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  // Navegar para a tela de cadastro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccountScreen()),
                  );
                },
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
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

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Create New \nAccount',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              TextButton(
                onPressed: () {
                  // Navegar para a tela de cadastro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Already Registered? Log in here.',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  ),
                ),
              ),
              
              
              SizedBox(height: 80.0),
              Text(
                'NAME',
               textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ariane Silveira',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              
              
              Text(
                'EMAIL',
               textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ariane@email.com',
                  border: OutlineInputBorder(),
                ),
              ),
                            SizedBox(height: 20.0),
             Text(
                'PASSWORD',
               textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),

              TextFormField(
                decoration: InputDecoration(
                  labelText: '*******',
                  border: OutlineInputBorder(),
                ),
              ),
              
              SizedBox(height: 20.0),
             Text(
                'DATE OF BIRTH',
               textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Select',
                  border: OutlineInputBorder(),
                   suffixIcon: Icon(Icons.calendar_today),
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
                   
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
                    elevation: WidgetStateProperty.all<double>(0),
                  ),
                  child: Text(
                    'sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),),),),
             
            ],
          ),
        ),
      ),
    );
  }
}
