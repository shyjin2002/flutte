import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = ""; // For showing input and result
  String num = ""; // For storing the current number
  double result = 0; // For storing the result
  String lastOperator = "+"; // Default operator

  void onButtonPressed(String value) {
    setState(() {
      if (RegExp(r'\d').hasMatch(value) || value == ".") {
        // Append numbers or decimal point
        num += value;
        display += value;
      } else if (["+", "-", "x", "%"].contains(value)) {
        // Process the previous number and operator
        _processOperator(lastOperator, num);
        lastOperator = value;
        num = ""; // Reset current number
        display += value;
      } else if (value == "=") {
        // Final calculation
        _processOperator(lastOperator, num);
        display = result.toString();
        num = "";
        lastOperator = "+"; // Reset for next calculation
      } else if (value == "C") {
        // Clear all
        display = "";
        num = "";
        result = 0;
        lastOperator = "+";
      }
    });
  }

  void _processOperator(String operator, String num) {
    if (num.isEmpty) return; // No number to process

    double currentNumber = double.parse(num);

    switch (operator) {
      case "+":
        result += currentNumber;
        break;
      case "-":
        result -= currentNumber;
        break;
      case "x":
        result *= currentNumber;
        break;
      case "%":
        result /= currentNumber;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 24, // Font size
              fontWeight: FontWeight.bold, // Font weight
              fontStyle: FontStyle.italic, // Font style (italic or normal)
              color: Color.fromARGB(255, 31, 32, 32), // Text color
              letterSpacing: 2.0, // Space between letters
              wordSpacing: 4.0, // Space between words
              decoration: TextDecoration
                  .underline, // Underline, overline, or line-through
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Display
          Container(
            height: 275,
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 102, 97, 101), // Background color of the container
              borderRadius: BorderRadius.circular(20), // Curved corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.5), // Shadow color with transparency
                  blurRadius: 5, // Softness of the shadow
                  offset: Offset(3, 3), // Position of the shadow (x, y)
                  spreadRadius: 2, // How much the shadow should spread
                ),
              ],
            ),
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(5),
            child: Text(
              textAlign: TextAlign.center,
              display,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          // Buttons
          Container(
            // color: Colors.black12,
            height: 400,
            width: 400,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                _buildButton("7"),
                _buildButton("8"),
                _buildButton("9"),
                _buildButton("%"),
                _buildButton("4"),
                _buildButton("5"),
                _buildButton("6"),
                _buildButton("x"),
                _buildButton("1"),
                _buildButton("2"),
                _buildButton("3"),
                _buildButton("-"),
                _buildButton("C"),
                _buildButton("0"),
                _buildButton("="),
                _buildButton("+"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String value) {
    return GestureDetector(
      onTap: () => onButtonPressed(value),
      child: Container(
        // color: Colors.black,
        // height: 10,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 155, 162, 167),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
                fontSize: 24, color: const Color.fromARGB(255, 22, 22, 22)),
          ),
        ),
      ),
    );
  }
}
