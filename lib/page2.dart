import 'package:flutter/material.dart';
import 'package:quize_app/result.dart';

List<String> questions = [
  'What is the correct syntax to declare a variable of type String with the value "Hello, world!" in Dart?',
  'Which of the following statements is true about Dart functions?',
  'What is the difference between const and final keywords in Dart for declaring constants and variables?',
  'What is the primary way to manage application state in Flutter, the UI framework built on Dart?',
  'Which of the following is NOT a valid way to iterate over a List in Dart?'
];
List<String> option1 = [
  'String message = "Hello, world!";',
  'Dart functions can only have one return statement.',
  'There is no difference, both are used for constants.',
  'What is the primary way to manage application state in Flutter, the UI framework built on Dart?',
  'Which of the following is NOT a valid way to iterate over a List in Dart?'
];
List<String> option2 = [
  'var message: String = "Hello, world!";',
  'Dart functions are always declared with a void return type.',
  'const is for compile-time constants, while final is for runtime constants.',
  'Using a global state management solution like Provider.',
  'Using a for...in loop that iterates over elements directly.'
];
List<String> option3 = [
  "String message = 'Hello, world!';",
  'Dart functions can be defined without a name (anonymous functions).',
  'const can only be used with primitive data types, while final can be used with any type.',
  'Dart does not have built-in mechanisms for state management.',
  'Using the forEach method on a List object.'
];
List<String> option4 = [
  'message = "Hello, world!"; (String)',
  'Dart does not support default arguments for functions.',
  'const creates an immutable constant value, while final allows the value to be assigned once after declaration.',
  'State is managed entirely within StatefulWidget classes.',
  'Using a while loop with a counter variable.'
];

List<String> correct = [
  'String message = "Hello, world!";',
  'Dart does not support default arguments for functions.',
  'const creates an immutable constant value, while final allows the value to be assigned once after declaration.',
  'Using a global state management solution like Provider.',
  'Using a for...in loop that iterates over elements directly.'
];

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String?> selectedOptions = List<String?>.filled(questions.length, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style:
              TextStyle(fontFamily: 'Blackitalic', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 400,
            color: const Color.fromARGB(255, 0, 140, 255),
          ),
          Positioned(
            top: -10,
            left: -69,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.pinkAccent.withOpacity(.5)),
            ),
          ),
          Positioned(
            top: -70,
            left: 400,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.pinkAccent.withOpacity(.5)),
            ),
          ),
          Positioned(
            top: 70,
            right: -100,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.pinkAccent.withOpacity(.5)),
            ),
          ),
          Positioned(
            top: 70,
            right: 500,
            child: Container(
              width: MediaQuery.sizeOf(context).width * .1,
              height: MediaQuery.sizeOf(context).height * .2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.pinkAccent.withOpacity(.5)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: GridView.builder(
              itemCount: questions.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                mainAxisExtent: 350.0,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}) ${questions[index]}',
                          style: TextStyle(
                              fontFamily: 'Lightitalic',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        ...[
                          option1[index],
                          option2[index],
                          option3[index],
                          option4[index],
                        ].map((option) {
                          return RadioListTile<String>(
                            title: Text(
                              option,
                              style: TextStyle(fontFamily: 'Lightitalic'),
                            ),
                            value: option,
                            groupValue: selectedOptions[index],
                            onChanged: (value) {
                              setState(() {
                                selectedOptions[index] = value;
                              });
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int score = 0;
          for (int i = 0; i < correct.length; i++) {
            if (selectedOptions[i] == correct[i]) {
              score++;
            }
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                selectedOptions: selectedOptions,
                correctOptions: correct,
                score: score,
              ),
            ),
          );
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
