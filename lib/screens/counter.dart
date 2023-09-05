import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sarathwork/provider/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count =counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
      ),
      body: Center(
        child: Text("Count is $count"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          counter.increment();
        },
      ),
    );
  }
}
