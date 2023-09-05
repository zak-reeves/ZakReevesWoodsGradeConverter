import 'package:flutter/material.dart';

import 'grade_converter.dart'; // Import your GradeConverter class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GradeTool Web UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String numericGrade = '';
  String letterGrade = '';

  void convertGrade() {
    final gradeConverter = GradeConverter();
    final grade = double.tryParse(numericGrade);

    if (grade != null) {
      setState(() {
        letterGrade = gradeConverter.convertToLetterGrade(grade);
      });
    } else {
      setState(() {
        letterGrade = 'Invalid Input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GradeTool Web UI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter Numeric Grade:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 100,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    numericGrade = value;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: convertGrade,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 20),
            Text(
              'Letter Grade: $letterGrade',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
