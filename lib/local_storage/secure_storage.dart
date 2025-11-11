import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = FlutterSecureStorage();

  writeData({required key, required value}) async {
    await storage.write(key: key, value: value);
  }

  readData({required key}) async {
    String? value = await storage.read(key: key);
    return value;
  }

  deleteData({required key}) async {
    await storage.delete(key: key);
  }

  deleteAllData() async {
    await storage.deleteAll();
  }
}
