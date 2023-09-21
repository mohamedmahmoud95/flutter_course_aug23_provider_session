import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';

class ProviderExample1 extends StatefulWidget {
  const ProviderExample1({Key? key}) : super(key: key);

  @override
  State<ProviderExample1> createState() => _ProviderExample1State();
}

class _ProviderExample1State extends State<ProviderExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Text(
          '${context.watch<Counter>().count}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
