import 'package:flutter/material.dart';

import 'app.dart';
import 'core/services/main_initializer.dart';

void main() async {
  await MainInitializer.initialize();
  runApp(const MyApp());
}
