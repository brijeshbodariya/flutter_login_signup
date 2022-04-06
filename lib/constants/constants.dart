import 'package:flutter/foundation.dart';

const String signIn = 'signin';
const String signUp = 'signup';
const String splashScreen = 'splashscreen';

void logs(String message) {
  if (kDebugMode) {
    print(message);
  }
}
