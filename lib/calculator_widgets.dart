import 'package:flutter/material.dart';

class CalculatorInput extends StatelessWidget {
  const CalculatorInput({required this.input, super.key});
  final String input;

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: TextStyle(fontSize: 48, color: Colors.white),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({required this.icon, required this.onPressed,required this.color, super.key});
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return IconButton(

      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
  }
}



class CalculatorLogic extends StatelessWidget {
  const CalculatorLogic({ required this.onPressed, required this.action, required this.color, super.key});
  final VoidCallback onPressed;
  final String action;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        minimumSize: Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        action,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

