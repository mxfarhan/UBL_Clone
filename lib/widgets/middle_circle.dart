import 'package:flutter/material.dart';

class MiddleCircle extends StatelessWidget {
  const MiddleCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: CircleBorder(),
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 10,
              offset: Offset(4, 7),
            ),
            BoxShadow(
              color: Colors.white24.withOpacity(0.2),
              spreadRadius: -2,
              blurRadius: 8,
              offset: Offset(0, 10),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.8),
              Colors.white,
              Colors.white.withOpacity(0.8),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '  Show\nBalance',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
