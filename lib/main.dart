import 'package:flutter/material.dart';

void main() {
  runApp(SmartCalc());
}

class SmartCalc extends StatelessWidget {
  const SmartCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _currentInput = "";
  double _num1 = 0;
  double _num2 = 0;
  String _operation = "";
  bool _shouldResetInput = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                _output,
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: buttonCalc(
                          textBtn: "C",
                          color: const Color.fromARGB(255, 204, 204, 204),
                          textColor: Colors.black),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "+/-",
                          color: const Color.fromARGB(255, 204, 204, 204),
                          textColor: Colors.black),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "%",
                          color: const Color.fromARGB(255, 204, 204, 204),
                          textColor: Colors.black),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "÷",
                          color: const Color.fromARGB(255, 240, 143, 52),
                          textColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: buttonCalc(
                          textBtn: "7",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "8",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "9",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "×",
                          color: const Color.fromARGB(255, 240, 143, 52),
                          textColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: buttonCalc(
                          textBtn: "4",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "5",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "6",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "-",
                          color: const Color.fromARGB(255, 240, 143, 52),
                          textColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: buttonCalc(
                          textBtn: "1",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "2",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "3",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "+",
                          color: const Color.fromARGB(255, 240, 143, 52),
                          textColor: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: buttonCalc(
                          textBtn: "0",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: ".",
                          color: const Color.fromARGB(255, 63, 63, 63),
                          textColor: Colors.white),
                    ),
                    Expanded(
                      child: buttonCalc(
                          textBtn: "=",
                          color: const Color.fromARGB(255, 240, 143, 52),
                          textColor: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buttonCalc(
    {required String textBtn, required Color color, required Color textColor}) {
  return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        onTap: () {},
        child: Center(
            child: Text(textBtn,
                style: TextStyle(
                    color: textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))),
      ));
}
