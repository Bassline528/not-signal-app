import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';

import 'package:not_signal/core/core.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  configureDependencies();

  runApp(await builder());
}
