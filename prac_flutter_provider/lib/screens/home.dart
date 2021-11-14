import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prac_flutter_provider/providers/counter.dart';
import 'package:prac_flutter_provider/widgets/count.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('You have pushed the button this many times:'),

            /// Extracted as a separate widget for performance optimization.
            /// As a separate widget, it will rebuild independently from [MyHomePage].
            ///
            /// This is totally optional (and rarely needed).
            /// Similarly, we could also use [Consumer] or [Selector].
            Count(),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                  child: Text("+"),
                ),
                SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    context.read<Counter>().decrement();
                  },
                  child: Text("-"),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Incremet Tap Count : ${context.watch<Counter>().incrementTapCount}",
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Decremet Tap Count : ${context.watch<Counter>().decrementTapCount}",
            ),
          ],
        ),
      ),
    );
  }
}
