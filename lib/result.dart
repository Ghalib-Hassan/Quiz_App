import 'package:flutter/material.dart';
import 'package:quize_app/main.dart';
import 'package:quize_app/page2.dart';

class ResultPage extends StatelessWidget {
  final List<String?> selectedOptions;
  final List<String> correctOptions;
  final int score;

  ResultPage({
    required this.selectedOptions,
    required this.correctOptions,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 140, 255),
      appBar: AppBar(
        title: Text(
          'Result',
          style:
              TextStyle(fontFamily: 'Blackitalic', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Your Score: $score out of ${correctOptions.length}',
                style: TextStyle(
                    fontFamily: 'Forte',
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: correctOptions.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}. ${questions[index]}',
                            style: TextStyle(
                                fontFamily: 'Lightitalic',
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..color = Color.fromARGB(255, 1, 65, 70)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Your Answer: ${selectedOptions[index] ?? "Not Answered"}',
                            style: TextStyle(
                                fontFamily: 'Lightitalic',
                                foreground: Paint()
                                  ..color = Color.fromARGB(255, 1, 65, 70)),
                          ),
                          Text(
                            'Correct Answer: ${correctOptions[index]}',
                            style: TextStyle(
                                fontFamily: 'Lightitalic',
                                foreground: Paint()
                                  ..color = Color.fromARGB(255, 1, 65, 70)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Text('Start Again'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
