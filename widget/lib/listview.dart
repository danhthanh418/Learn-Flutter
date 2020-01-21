import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.blue[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}',style: TextStyle(color: Colors.white),)),
          );
        });
  }
}
