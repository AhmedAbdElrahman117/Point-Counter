// ignore_for_file: use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int _Team_A_Points = 0;
  int _Team_B_Points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text('$_Team_A_Points',
                        style: const TextStyle(fontSize: 180)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_A_Points++;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_A_Points += 2;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_A_Points += 3;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 30,
                      endIndent: 10,
                    )),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 35),
                    ),
                    Text('$_Team_B_Points',
                        style: const TextStyle(fontSize: 180)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_B_Points++;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 1 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_B_Points += 2;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _Team_B_Points += 3;
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: ElevatedButton(
                onPressed: () {
                  _Team_A_Points = 0;
                  _Team_B_Points = 0;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: const Size(180, 50)),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
