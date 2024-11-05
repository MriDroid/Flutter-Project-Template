import 'package:flutter/material.dart';
import 'package:temp/core/services/main_initializer.dart';
import 'app.dart';

void main() async {
  await MainInitializer.initialize();
  runApp(const MyApp());
}
