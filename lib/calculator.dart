import 'dart:ffi';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _result = 0;
  String numbers = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // ignore: prefer_const_constructors
        title: Center(
          child: const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 30, // Font size
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              height: 250,

              // child: Text(
              //   _result
              //       .toString(), // A string holding the result of the calculation
              //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              // ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 244, 236, 236), // Background color of the container
                // borderRadius: BorderRadius.circular(20), // Curved corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.2), // Shadow color with transparency
                    blurRadius: 10, // Softness of the shadow
                    offset: Offset(5, 5), // Position of the shadow (x, y)
                    spreadRadius: 2, // How much the shadow should spread
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                _result
                    .toString(), // A string holding the result of the calculation
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button 7 pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                        backgroundColor: const Color.fromARGB(
                            255, 246, 224, 241), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      child: Text(
                        "7",
                        style: TextStyle(
                          fontSize: 24.0, // Text size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button 8 pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                        backgroundColor: const Color.fromARGB(
                            255, 246, 224, 241), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 24.0, // Text size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button 9 pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                        backgroundColor: const Color.fromARGB(
                            255, 246, 224, 241), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 24.0, // Text size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       print("Button % pressed!");
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       padding:
                  //           EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                  //       backgroundColor: const Color.fromARGB(
                  //           255, 246, 224, 241), // Button size
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius:
                  //             BorderRadius.circular(10), // Rounded corners
                  //       ),
                  //     ),
                  //     child: Text(
                  //       "%",
                  //       style: TextStyle(
                  //         fontSize: 24.0, // Text size
                  //         fontWeight: FontWeight.bold, // Bold text
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Button C pressed!");
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                        backgroundColor: const Color.fromARGB(
                            255, 246, 224, 241), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                      ),
                      child: Text(
                        "C",
                        style: TextStyle(
                          fontSize: 24.0, // Text size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 4 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 5 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 6 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      List<String> parts = numbers.split('+');

                      if (parts.length == 2) {
                        // Try to parse the numbers

                        int num1 = int.parse(parts[0].trim()); // First number
                        int num2 = int.parse(parts[1].trim()); // Second number
                        setState(() {
                          _result = num1 + num2;
                        });
                        // Perform the addition
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 1 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      numbers += "1";
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 3 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button - pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button . pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button % pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "%",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button 0 pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button x pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "x",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Button = pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),

                      backgroundColor: const Color.fromARGB(
                          255, 246, 224, 241), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 24.0, // Text size
                        fontWeight: FontWeight.bold, // Bold text
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     ElevatedButton(
            //       child: Align(
            //         alignment: Alignment.bottomCenter,
            //         child: Text(
            //           "=",
            //           style: TextStyle(
            //             fontSize: 24.0, // Text size
            //             fontWeight: FontWeight.bold, // Bold text
            //           ),
            //         ),
            //       ),
            //       onPressed: () {
            //         print("Button = pressed!");
            //       },
            //       style: ElevatedButton.styleFrom(
            //         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),

            //         backgroundColor:
            //             const Color.fromARGB(255, 246, 224, 241), // Button size
            //         shape: RoundedRectangleBorder(
            //           borderRadius:
            //               BorderRadius.circular(10), // Rounded corners
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
