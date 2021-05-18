import 'package:flutter/material.dart';

class FirstLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstLayoutPageState();
}

class FirstLayoutPageState extends State<FirstLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text('Kandersteg Switzerland',
                  style: TextStyle(color: Colors.grey[500]))
            ],
          ))
        ],
      ),
    );
  }
}
