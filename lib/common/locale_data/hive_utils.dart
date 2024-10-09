import 'package:hive_flutter/hive_flutter.dart';

mixin HiveUtils {
  static Future<void> saveData<T>(String boxKey, T data,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }
    await box.add(data);
  }

  static Future<List<T>> getAllData<T>(String boxKey,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }
    return box.values.toList();
  }

  // Метод для получения данных по индексу
  static Future<T?> getData<T>(String boxKey, int index,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }

    if (index >= 0 && index < box.length) {
      return box.getAt(index);
    } else {
      return null;
    }
  }

  // Метод для получения данных по ключу
  static Future<T?> getDataByKey<T>(String boxKey, dynamic key,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }

    return box.get(key);
  }

  static Future<void> setDataByKey<T>(String boxKey, dynamic key, T data,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }

    return box.put(key, data);
  }

  static Future<void> clearBox<T>(String boxKey, {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }
    box.clear();
  }

  static Future<void> updateData<T>(String boxKey, T data, int index,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }
    await box.putAt(index, data);
  }

  static Future<void> deleteData<T>(String boxKey, int index,
      {List<int>? encrypKey}) async {
    late Box<T> box;
    if (Hive.isBoxOpen(boxKey)) {
      box = Hive.box<T>(boxKey);
    } else {
      box = await Hive.openBox<T>(boxKey,
          encryptionCipher:
              encrypKey != null ? HiveAesCipher(encrypKey) : null);
    }
    await box.deleteAt(index);
  }
}
