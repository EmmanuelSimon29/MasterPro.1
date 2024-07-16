import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String name;
  final String course;
  final Color color;
  final Color avatarColor;

  CourseCard({
    required this.name,
    required this.course,
    required this.color,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        color: color,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: avatarColor,
            child: Text(name[0]),
          ),
          title: Text(name),
          subtitle: Text(course),
        ),
      ),
    );
  }
}
