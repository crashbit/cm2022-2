import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi2 {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException {
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;

    try {
      return await _auth.authenticateWithBiometrics(
        androidAuthStrings: AndroidAuthMessages(
          signInTitle: 'Face ID es requerido',
        ),
        localizedReason: 'Escanea tu rostro para ingresar',
        useErrorDialogs: false,
        stickyAuth: false,
      );
    } on PlatformException {
      return false;
    }
  }
}
