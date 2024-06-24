// ignore_for_file: use_key_in_widget_constructors, camel_case_types, non_constant_identifier_names

import 'package:basketball_points_counter/Views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointCounter());
}

class PointCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
