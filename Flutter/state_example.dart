import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Usuario {
  final String email;
  final String senha;

  Usuario({required this.email, required this.senha});
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

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _senha;
  bool _isLoggedIn = false;

  void _submitLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Simulação de autenticação
      Usuario usuario = Usuario(email: _email, senha: _senha);
      // Aqui você pode adicionar lógica real de autenticação

      // Após autenticar com sucesso, marcamos o usuário como logado
      setState(() {
        _isLoggedIn = true;
      });

      // Navegar para a página home
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(usuario: usuario),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: _isLoggedIn ? _buildLoggedInWidget() : _buildLoginForm(),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
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
          Text(
            'EMAIL',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'email@example.com',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
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
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              _senha = value!;
            },
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: _submitLogin,
              child: Text('Login'),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
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
    );
  }

  Widget _buildLoggedInWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Logged In',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0),
        Text('Email: $_email'),
        SizedBox(height: 20.0),
        TextButton(
          onPressed: () {
            setState(() {
              _isLoggedIn = false;
            });
          },
          child: Text(
            'Logout',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
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
              SizedBox(height: 20.0),
              Text(
                'NAME',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your name',
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
                  labelText: 'email@example.com',
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
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Sign Up button pressed');
                  },
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Usuario usuario;

  const HomeScreen({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome, ${usuario.email}!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navegar de volta para a tela anterior
              },
              child: Text('back'),
            ),
          ],
        ),
      ),
    );
  }
}
