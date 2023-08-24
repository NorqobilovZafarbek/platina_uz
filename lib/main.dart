
import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'scr/common/widgets/app.dart';

void main() {
  runZonedGuarded(() => runApp(const App()), (error, stack) {
    print(error);
    print(stack);
  });
}