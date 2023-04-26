import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuto_provider2/provider/object_provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Container(
      height: 100,
      color: Colors.purple,
      child: Center(
          child: Column(
        children: [
          const Text('Object Provider Widget'),
          const Text('Id'),
          Text(provider.id),
        ],
      )),
    );
  }
}
