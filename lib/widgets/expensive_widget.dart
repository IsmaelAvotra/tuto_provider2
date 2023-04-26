import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuto_provider2/classes/expensive_object.dart';
import 'package:tuto_provider2/provider/object_provider.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
        (provider) => provider.expensiveObject);
    return Container(
      height: 100,
      color: Colors.blue,
      child: Center(
          child: Column(
        children: [
          const Text('Expensive Widget'),
          const Text('Last updated'),
          Text(expensiveObject.lastUpdated),
        ],
      )),
    );
  }
}
