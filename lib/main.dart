import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuto_provider2/provider/object_provider.dart';
import 'package:tuto_provider2/widgets/cheap_widget.dart';
import 'package:tuto_provider2/widgets/expensive_widget.dart';
import 'package:tuto_provider2/widgets/object_provider_widget.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ObjectProvider(),
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(child: ExpensiveWidget()),
              Expanded(child: CheapWidget()),
            ],
          ),
          const ObjectProviderWidget(),
          TextButton(
            onPressed: () {
              context.read<ObjectProvider>().start();
            },
            child: const Text('Start'),
          ),
          TextButton(
            onPressed: () {
              context.read<ObjectProvider>().stop();
            },
            child: const Text('Stop'),
          ),
        ],
      ),
    );
  }
}
