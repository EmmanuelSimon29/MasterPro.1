import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'teacher_home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String role = 'Alumno';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo1.png',
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Apellidos',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Correo',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('Alumno'),
                        leading: Radio<String>(
                          value: 'Alumno',
                          groupValue: role,
                          onChanged: (String? value) {
                            setState(() {
                              role = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Profesor'),
                        leading: Radio<String>(
                          value: 'Profesor',
                          groupValue: role,
                          onChanged: (String? value) {
                            setState(() {
                              role = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String firstName = firstNameController.text;
                      String lastName = lastNameController.text;
                      String email = emailController.text;
                      String password = passwordController.text;
                      if (role == 'Profesor') {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeacherHomeScreen(
                              name: '$firstName $lastName',
                            ),
                          ),
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(
                              name: '$firstName $lastName',
                              role: role,
                              email: email,
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('Registrarse'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue, backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
