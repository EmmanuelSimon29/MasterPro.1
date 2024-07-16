import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'home_screen.dart';
import 'teacher_home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo1.png',
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Master PRO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Correo Electrónico',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;

                  if (email == 'Ejemplo@gmail.com' && password == 'profesor123') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TeacherHomeScreen(name: 'Roberto'),
                      ),
                    );
                  } else if (email == 'alumno@gmail.com' && password == 'alumno123') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(name: '', role: 'Alumno', email: email),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Correo o contraseña incorrectos'),
                      ),
                    );
                  }
                },
                child: Text('Iniciar Sesión'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()),
                  );
                },
                child: Text('Registrarse'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Iniciar con:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              SocialMediaIcons(),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.facebook),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.google),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.twitter),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
