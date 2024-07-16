import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue, backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
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
