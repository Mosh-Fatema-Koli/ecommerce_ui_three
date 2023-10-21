import 'package:flutter/material.dart';
import 'package:inno_shopp/src/app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  runApp(MyApp());
}
