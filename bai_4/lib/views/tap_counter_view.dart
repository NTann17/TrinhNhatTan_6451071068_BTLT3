import 'package:flutter/material.dart';
import '../models/counter_model.dart';
import '../widgets/tap_button.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({Key? key}) : super(key: key);

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {
  final CounterModel _counter = CounterModel();

  void _increment() {
    setState(() {
      _counter.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tap Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('MSSV: 6451071068', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            Text('Tap count: ${_counter.count}', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            TapButton(onTap: _increment),
          ],
        ),
      ),
    );
  }
}
