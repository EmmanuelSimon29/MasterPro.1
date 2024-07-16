import 'package:flutter/material.dart';
import 'course_card.dart';
import 'dart:io';

class HomeScreen extends StatelessWidget {
  final String name;
  final String role;
  final String email;
  final File? image;

  HomeScreen({
    required this.name,
    required this.role,
    required this.email,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: image != null ? FileImage(image!) : null,
                        child: image == null
                            ? Icon(
                                Icons.account_circle,
                                size: 60,
                                color: Colors.white,
                              )
                            : null,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hola, $name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$email',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '($role)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '¿Qué me gustaría aprender hoy?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Busca tu curso',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.play_arrow, color: Colors.green),
                              SizedBox(width: 10),
                              Text('Comience a aprender'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cursos en progreso',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            CourseCard(
              name: 'Julio',
              course: 'Sistemas Operativos',
              color: Colors.orange[100]!,
              avatarColor: Colors.green,
            ),
            CourseCard(
              name: 'Castillo',
              course: 'Sistemas Operativos',
              color: Colors.red[100]!,
              avatarColor: Colors.red,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
