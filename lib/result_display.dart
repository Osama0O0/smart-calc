import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  const ResultDisplay({
    super.key,
    required String output,
  }) : _output = output;

  final String _output;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Text(
        _output,
        style: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    );
  }
}
