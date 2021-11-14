import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// ignore: prefer_mixin
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  int _incrementTapCount = 0;
  int _decrementTapCount = 0;

  int get count => _count;
  int get incrementTapCount => _incrementTapCount;
  int get decrementTapCount => _decrementTapCount;

  void increment() {
    _count++;
    _incrementTapCount++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    _decrementTapCount++;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
    properties.add(IntProperty('increment_tap_count', _incrementTapCount));
    properties.add(IntProperty('decrement_tap_count', _decrementTapCount));
  }
}
