import 'package:flutte/calculator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllerFor500 = TextEditingController();
  final TextEditingController _controllerFor200 = TextEditingController();
  final TextEditingController _controllerFor100 = TextEditingController();
  final TextEditingController _controllerFor50 = TextEditingController();
  final TextEditingController _controllerFor20 = TextEditingController();
  final TextEditingController _controllerFor10 = TextEditingController();
  final TextEditingController _controllerForname = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now(); // Default date

  // Method to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2000), // Minimum selectable date
          lastDate: DateTime(2101), // Maximum selectable date
        ) ??
        selectedDate;
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${selectedDate.toLocal()}"
            .split(' ')[0]; // Set selected date to the text field
      });
    }
  }

  // Initialize with '0'
  final TextEditingController _controllerForcoins = TextEditingController();
  String _output = '';

  num multileOf500 = 0;
  num multileOf200 = 0;
  num multileOf100 = 0;
  num multileOf50 = 0;
  num multileOf20 = 0;
  num multileOf10 = 0;
  num multileOfcoins = 0;

  num addtotal = 0;
// Variable to hold the output result
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text(
            'DENOMINATION',
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
      body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            // width: 420,
            // height: 594,
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                  255, 246, 224, 241), // Background color of the container
              borderRadius: BorderRadius.circular(20), // Curved corners
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
            child: Column(
              children: [
                // const Text(
                //   'DENOMINATION',
                //   style: TextStyle(
                //     fontSize: 24, // Font size
                //     fontWeight: FontWeight.bold, // Font weight
                //     fontStyle:
                //         FontStyle.italic, // Font style (italic or normal)
                //     color: Color.fromARGB(255, 31, 32, 32), // Text color
                //     letterSpacing: 2.0, // Space between letters
                //     wordSpacing: 4.0, // Space between words
                //     decoration: TextDecoration
                //         .underline, // Underline, overline, or line-through
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'NAME:',
                          style: TextStyle(
                            fontSize: 20, // Font size
                            fontWeight: FontWeight.bold, // Font weight
                            fontStyle: FontStyle
                                .italic, // Font style (italic or normal)
                            color:
                                Color.fromARGB(255, 31, 32, 32), // Text color
                            letterSpacing: 2.0, // Space between letters
                            wordSpacing: 4.0, // Space between words
                            decoration: TextDecoration
                                .underline, // Underline, overline, or line-through
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 50,
                          child: TextField(
                            style: TextStyle(fontSize: 20),
                            controller:
                                _controllerForname, // Set controller to capture text
                            keyboardType: TextInputType.name, // Numeric input
                            decoration: InputDecoration(
                              // Remove the default underline
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 12),
                              // Padding inside the text field
                            ),
                            // Set controller to capture text
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Your action here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorApp()),
                        );
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white, // Text color
                        backgroundColor: const Color.fromARGB(
                            255, 167, 164, 164), // Button background color
                        padding: EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24), // Padding
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Rounded corners
                        ),
                      ),
                      child: Text(
                        'CALCULATOR',
                        style: TextStyle(
                          fontSize: 15, // Font size
                          fontWeight: FontWeight.bold, // Font weight
                          fontStyle:
                              FontStyle.italic, // Font style (italic or normal)
                          color: Color.fromARGB(255, 31, 32, 32), // Text color
                          letterSpacing: 2.0, // Space between letters
                          wordSpacing: 4.0, // Space between words
                          decoration: TextDecoration
                              .underline, // Underline, overline, or line-through
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'DATE:',
                      style: TextStyle(
                        fontSize: 20, // Font size
                        fontWeight: FontWeight.bold, // Font weight
                        fontStyle:
                            FontStyle.italic, // Font style (italic or normal)
                        color: Color.fromARGB(255, 31, 32, 32), // Text color
                        letterSpacing: 5.0, // Space between letters
                        wordSpacing: 10.0, // Space between words
                        decoration: TextDecoration
                            .underline, // Underline, overline, or line-through
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              style: TextStyle(fontSize: 20),
                              controller: _dateController,
                              decoration: InputDecoration(
                                // labelText: "Select Date",
                                // hintText: "Tap to select date",
                                suffixIcon: Icon(Icons.calendar_today),
                              ),
                              readOnly: true, // Make the text field read-only
                              onTap: () => _selectDate(
                                  context), // Trigger date picker when tapped
                            ),
                            SizedBox(height: 5),
                            // Text(
                            //   "Date: ${selectedDate.toLocal()}"
                            //       .split(' ')[0], // Display selected date
                            //   style: TextStyle(fontSize: 16),
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 20,
                  height: 20, // Width of the container
                ),
                Container(
                    // color: Colors.blue, // Background color
                    width: 350, // Width of the container
                    // height: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 246, 224,
                          241), // Background color of the container
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
                              0.2), // Shadow color with transparency
                          blurRadius: 10, // Softness of the shadow
                          offset: Offset(5, 5), // Position of the shadow (x, y)
                          spreadRadius: 2, // How much the shadow should spread
                        ),
                      ],
                      // Curved corners
                    ), // Height of the container
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "500 X  ",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Container(
                                  width: 70,
                                  child: TextField(
                                    style: TextStyle(fontSize: 15),
                                    controller:
                                        _controllerFor500, // Set controller to capture text
                                    keyboardType:
                                        TextInputType.number, // Numeric input
                                    decoration: InputDecoration(
                                      // Remove the default underline
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 12),
                                      // Padding inside the text field
                                    ),
                                    onTap: () {},
                                    onChanged: (value) {
                                      if (value.isEmpty) {
                                        value = "0";
                                      }
                                      setState(() {
                                        multileOf500 =
                                            (int.tryParse(value)! * 500);
                                        addtotal = multileOf500 +
                                            multileOf200 +
                                            multileOf100 +
                                            multileOf50 +
                                            multileOf20 +
                                            multileOf10;
                                      });
                                    }, // Set controller to capture text
                                  ),
                                ),
                                Text(
                                  "=  ${multileOf500}",
                                  style: const TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "200 X ",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: const Color.fromARGB(
                                              255, 162, 158, 158),
                                          width: 2.0),
                                    ),
                                  ),
                                  width: 70,
                                  child: TextField(
                                    style: TextStyle(fontSize: 15),
                                    controller:
                                        _controllerFor200, // Set controller to capture text
                                    keyboardType:
                                        TextInputType.number, // Numeric input
                                    decoration: InputDecoration(
                                      // Remove the default underline
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 12),
                                      // Padding inside the text field
                                    ),
                                    onChanged: (value) {
                                      if (value.isEmpty) {
                                        value = "0";
                                      }
                                      setState(() {
                                        multileOf200 =
                                            (int.tryParse(value)! * 200);
                                        addtotal = multileOf500 +
                                            multileOf200 +
                                            multileOf100 +
                                            multileOf50 +
                                            multileOf20 +
                                            multileOf10;
                                      });
                                    }, // Set controller to capture text
                                  ),
                                ),
                                Text(
                                  "=  ${multileOf200}",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "100 X ",
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 162, 158, 158),
                                        width: 2.0),
                                  ),
                                ),
                                width: 70,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  controller:
                                      _controllerFor100, // Set controller to capture text
                                  keyboardType:
                                      TextInputType.number, // Numeric input
                                  decoration: InputDecoration(
                                    // Remove the default underline
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    // Padding inside the text field
                                  ),
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      value = "0";
                                    }
                                    setState(() {
                                      multileOf100 =
                                          (int.tryParse(value)! * 100);
                                      addtotal = multileOf500 +
                                          multileOf200 +
                                          multileOf100 +
                                          multileOf50 +
                                          multileOf20 +
                                          multileOf10;
                                    });
                                  }, // Set controller to capture text
                                ),
                              ),
                              Text(
                                "=  ${multileOf100}",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "    50 X ",
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 162, 158, 158),
                                        width: 2.0),
                                  ),
                                ),
                                width: 70,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  controller:
                                      _controllerFor50, // Set controller to capture text
                                  keyboardType:
                                      TextInputType.number, // Numeric input
                                  decoration: InputDecoration(
                                    // Remove the default underline
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    // Padding inside the text field
                                  ),
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      value = "0";
                                    }
                                    setState(() {
                                      multileOf50 = (int.tryParse(value)! * 50);
                                      addtotal = multileOf500 +
                                          multileOf200 +
                                          multileOf100 +
                                          multileOf50 +
                                          multileOf20 +
                                          multileOf10;
                                    });
                                  }, // Set controller to capture text
                                ),
                              ),
                              Text(
                                "=  ${multileOf50}",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "    20 X ",
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 162, 158, 158),
                                        width: 2.0),
                                  ),
                                ),
                                width: 70,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  controller:
                                      _controllerFor20, // Set controller to capture text
                                  keyboardType:
                                      TextInputType.number, // Numeric input
                                  decoration: InputDecoration(
                                    // Remove the default underline
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    // Padding inside the text field
                                  ),
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      value = "0";
                                    }
                                    setState(() {
                                      multileOf20 = (int.tryParse(value)! * 20);
                                      addtotal = multileOf500 +
                                          multileOf200 +
                                          multileOf100 +
                                          multileOf50 +
                                          multileOf20 +
                                          multileOf10;
                                    });
                                  }, // Set controller to capture text
                                ),
                              ),
                              Text(
                                "=  ${multileOf20}",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "    10 X ",
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 162, 158, 158),
                                        width: 2.0),
                                  ),
                                ),
                                width: 70,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  controller:
                                      _controllerFor10, // Set controller to capture text
                                  keyboardType:
                                      TextInputType.number, // Numeric input
                                  decoration: InputDecoration(
                                    // Remove the default underline
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    // Padding inside the text field
                                  ),
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      value = "0";
                                    }
                                    setState(() {
                                      multileOf10 = (int.tryParse(value)! * 10);
                                      addtotal = multileOf500 +
                                          multileOf200 +
                                          multileOf100 +
                                          multileOf50 +
                                          multileOf20 +
                                          multileOf10 +
                                          multileOfcoins;
                                    });
                                  }, // Set controller to capture text
                                ),
                              ),
                              Text(
                                "=  ${multileOf10}",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 162, 158, 158),
                                  width: 2.0),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Coins X ",
                                style: TextStyle(fontSize: 25),
                              ),
                              Container(
                                width: 70,
                                child: TextField(
                                  style: TextStyle(fontSize: 15),
                                  controller:
                                      _controllerForcoins, // Set controller to capture text
                                  keyboardType:
                                      TextInputType.number, // Numeric input
                                  decoration: InputDecoration(
                                    // Remove the default underline
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 12),
                                    // Padding inside the text field
                                  ),
                                  onChanged: (value) {
                                    if (value.isEmpty) {
                                      value = "0";
                                    }
                                    setState(() {
                                      multileOfcoins =
                                          (int.tryParse(value)! * 1);
                                      addtotal = multileOf500 +
                                          multileOf200 +
                                          multileOf100 +
                                          multileOf50 +
                                          multileOf20 +
                                          multileOf10 +
                                          multileOfcoins;
                                    });
                                  }, // Set controller to capture text
                                ),
                              ),
                              Text(
                                "=  ${multileOfcoins}",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Amt    ",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "= ${addtotal}",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
