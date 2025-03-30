import 'package:flutter/material.dart';
import 'package:smart_calc/button_clac.dart';
import 'package:smart_calc/result_display.dart';

void main() {
  runApp(SmartCalc());
}

class SmartCalc extends StatelessWidget {
  const SmartCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _currentInput = "";
        _num1 = 0;
        _num2 = 0;
        _operation = "";
      } else if (buttonText == "+/-") {
        if (_output != "0") {
          if (_output.startsWith("-")) {
            _output = _output.substring(1);
          } else {
            _output = "-" + _output;
          }
        }
      } else if (buttonText == "%") {
        _output = (double.parse(_output) / 100).toString();
        if (_output.endsWith(".0")) {
          _output = _output.substring(0, _output.length - 2);
        }
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "×" ||
          buttonText == "÷") {
        _num1 = double.parse(_output);
        _operation = buttonText;
        _shouldResetInput = true;
      } else if (buttonText == "=") {
        if (_operation.isNotEmpty) {
          _num2 = double.parse(_output);

          switch (_operation) {
            case "+":
              _output = (_num1 + _num2).toString();
              break;
            case "-":
              _output = (_num1 - _num2).toString();
              break;
            case "×":
              _output = (_num1 * _num2).toString();
              break;
            case "÷":
              _output = (_num1 / _num2).toString();
              break;
          }

          if (_output.endsWith(".0")) {
            _output = _output.substring(0, _output.length - 2);
          }

          _operation = "";
          _shouldResetInput = true;
        }
      } else if (buttonText == ".") {
        if (!_output.contains(".")) {
          _output += ".";
        }
      } else {
        if (_output == "0" || _shouldResetInput) {
          _output = buttonText;
          _shouldResetInput = false;
        } else {
          _output += buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ResultDisplay(output: _output),
            Column(
              children: [
                Row(
                  children: [
                    buttonCalc(
                      textBtn: "C",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: () => _buttonPressed("C"),
                    ),
                    buttonCalc(
                      textBtn: "+/-",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: () => _buttonPressed("+/-"),
                    ),
                    buttonCalc(
                      textBtn: "%",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: () => _buttonPressed("%"),
                    ),
                    buttonCalc(
                      textBtn: "÷",
                      color: const Color(0xFFFF9F0A),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("÷"),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    buttonCalc(
                      textBtn: "7",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("7"),
                    ),
                    buttonCalc(
                      textBtn: "8",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("8"),
                    ),
                    buttonCalc(
                      textBtn: "9",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("9"),
                    ),
                    buttonCalc(
                      textBtn: "×",
                      color: const Color(0xFFFF9F0A),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("×"),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    buttonCalc(
                      textBtn: "4",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("4"),
                    ),
                    buttonCalc(
                      textBtn: "5",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("5"),
                    ),
                    buttonCalc(
                      textBtn: "6",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("6"),
                    ),
                    buttonCalc(
                      textBtn: "-",
                      color: const Color(0xFFFF9F0A),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("-"),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    buttonCalc(
                      textBtn: "1",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("1"),
                    ),
                    buttonCalc(
                      textBtn: "2",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("2"),
                    ),
                    buttonCalc(
                      textBtn: "3",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("3"),
                    ),
                    buttonCalc(
                      textBtn: "+",
                      color: const Color(0xFFFF9F0A),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("+"),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: buttonCalc(
                          textBtn: "0",
                          color: const Color(0xFF333333),
                          textColor: Colors.white,
                          onPressed: () => _buttonPressed("0"),
                          isZero: true,
                        ),
                      ),
                    ),
                    buttonCalc(
                      textBtn: ".",
                      color: const Color(0xFF333333),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("."),
                    ),
                    buttonCalc(
                      textBtn: "=",
                      color: const Color(0xFFFF9F0A),
                      textColor: Colors.white,
                      onPressed: () => _buttonPressed("="),
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
