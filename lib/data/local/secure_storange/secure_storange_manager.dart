import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalSecureManager {
  static const _secureStorage = FlutterSecureStorage();
  final String _tokenKey = 'token';

  //Token User

  Future<String?> readToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> writeToken({String? value}) async {
    return await _secureStorage.write(key: _tokenKey, value: value);
  }

  //Remove all data when user log out
  Future<void> deleteAll() async {
    return await _secureStorage.deleteAll();
  }
}
