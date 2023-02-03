import 'package:delivery_dart/app/delivery_app.dart';
import 'package:flutter/cupertino.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  await Env.instance.load();
  runApp(const DeliveryApp());
}
