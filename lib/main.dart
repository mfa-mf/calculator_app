import 'package:app1/calculator_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 0;
  int num2 = 0;
  num result = 0;
  String operation = '+';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF17171C),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
               SizedBox(
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: 150,
                margin: EdgeInsets.only(bottom: 40),
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25,

                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.tealAccent,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF2E2F3E),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorInput(input: '$num1'),
                    Text(
                      operation,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CalculatorInput(input: '$num2'),
                    Text(
                      '=',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CalculatorInput(input: '$result'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Number 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CalculatorButton(
                        onPressed: () {
                          setState(() {
                            num1++;
                          });
                        },
                        icon: Icons.add_circle_rounded,
                        color: Color(0xFF00C853),
                      ),
                      CalculatorButton(
                        onPressed: () {
                          setState(() {
                            num1--;
                          });
                        },
                        icon: Icons.remove_circle_rounded,
                        color: Color(0xFFE53935),
                      ),
                      ],
                  ),
                  Text(
                    'Number 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CalculatorButton(
                        onPressed: () {
                          setState(() {
                            num2++;
                          });
                        },
                        icon: Icons.add_circle_rounded,
                        color: Color(0xFF00C853),
                      ),
                      CalculatorButton(
                        onPressed: () {
                          setState(() {
                            num2--;
                          });
                        },
                        icon: Icons.remove_circle_rounded,
                        color: Color(0xFFF8403C),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalculatorLogic(
                    onPressed: () {
                      setState(() {
                        operation = '+';
                      });
                    },
                    action: 'Addition +',
                    color: Color(0xFF00C853),
                  ),
                  CalculatorLogic(
                    onPressed: () {
                      setState(() {
                        operation = '*';
                      });
                    },
                    action: 'Multiplication *',
                    color: Color(0xFF7C4DFF),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalculatorLogic(
                    onPressed: () {
                      setState(() {
                        operation = '-';
                      });
                    },
                    action: 'Subtraction -',
                    color: Color(0xFFE53935),
                  ),
                  CalculatorLogic(
                    onPressed: () {
                      setState(() {
                        operation = '/';
                      });
                    },
                    action: 'Division /',
                    color: Color(0xFF00B0FF),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalculatorLogic(
                    onPressed: () {
                      setState(() {
                        operation = '%';
                      });
                    },
                    action: 'Percentage %',
                    color: Color(0xFF64FFDA),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  minimumSize: Size(150, 50),
                  side: BorderSide(
                    color: Colors.tealAccent,
                    width: 5,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    switch (operation) {
                      case '+':
                        result = num1 + num2;
                      case '-':
                        result = num1 - num2;
                        case '*':
                        result = num1 * num2;
                      case '/':
                        result = num1 / num2;
                        case '%':
                        result = num1 % num2;
                      default:
                        result = 0;
                    }
                  });
                },
                child: Text(
                  'Result', // Changed from 'Reset' because the logic is calculation
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  fixedSize: const Size(110, 110),
                  side: const BorderSide(color: Colors.red, width: 5),
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  setState(() {
                    num1 = 0;
                    num2 = 0;
                    result = 0;
                    operation = '+';
                  });
                },
                child: Text(
                  'CLEAR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
