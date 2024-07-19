import 'package:flutter/material.dart';
import 'package:quize_app/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

bool selected = false;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController program = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 400,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 140, 255),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
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
        Positioned(
          top: 50,
          left: 150,
          child: Stack(alignment: Alignment.center, children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white54.withOpacity(.3)),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white54.withOpacity(.5)),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.white54.withOpacity(1)),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Center(
                        child: Text(
                          'Q',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Center(
                        child: Text(
                          'U',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Center(
                        child: Text(
                          'I',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Center(
                        child: Text(
                          'Z',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
        Positioned(
          left: 400,
          top: 350,
          child: MouseRegion(
            onEnter: (event) => setState(() {
              selected = true;
            }),
            onExit: (event) => setState(() {
              selected = false;
            }),
            child: Container(
              width: MediaQuery.sizeOf(context).width * .4,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 2, color: selected ? Colors.black : Colors.white)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: name,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 10, left: 10),
                        hintText: 'Enter your name',
                        hintStyle: TextStyle(fontFamily: 'Regular')),
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: rollno,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Enter your rollno',
                        hintStyle: TextStyle(fontFamily: 'Regular')),
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  TextField(
                    keyboardType: TextInputType.name,
                    controller: program,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                      hintText: 'Enter your program',
                      hintStyle: TextStyle(fontFamily: 'Regular'),
                    ),
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 570.0,
          left: 570.0,
          child: Container(
            width: 150.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                if (name.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Alert!!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Blackitalic'),
                        ),
                        content: Text(
                          'Please enter your name',
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        actions: [
                          TextButton(
                            child: Text(
                              'OK',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } else if (rollno.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Alert!!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Blackitalic'),
                        ),
                        content: Text(
                          'Please enter your rollno',
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        actions: [
                          TextButton(
                            child: Text(
                              'OK',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } else if (program.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Alert!!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Blackitalic'),
                        ),
                        content: Text(
                          'Please enter your program',
                          style: TextStyle(fontFamily: 'Regular'),
                        ),
                        actions: [
                          TextButton(
                            child: Text(
                              'OK',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                }
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20, fontFamily: 'Blackitalic'),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
