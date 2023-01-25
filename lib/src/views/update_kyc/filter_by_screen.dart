import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterByScreen extends StatefulWidget {
  const FilterByScreen({super.key});

  @override
  State<FilterByScreen> createState() => _FilterByScreenState();
}

class _FilterByScreenState extends State<FilterByScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}