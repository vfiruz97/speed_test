import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'package:speed_test/domain/core/errors.dart';
import 'package:speed_test/domain/core/failures.dart';

class DiskCache {
  Future<void> setRequest<T>(List<dynamic> request, dynamic value) async {
    try {
      final hashed = hash<T>(request);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/st_$hashed');
      file.writeAsString(json.encode(value));
    } catch (ex) {
      // throw UnexpectedValueError(const ValueFailure<String>.unexpected(
      //     failedValue: "DiskCache@setRequest error."));
    }
  }

  Future<dynamic> getRequest<T>(List<dynamic> request) async {
    try {
      final hashed = hash<T>(request);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/st_$hashed');
      final cached = await file.readAsString();
      final body = json.decode(cached);
      return body;
    } catch (ex) {
      return null;
      // throw UnexpectedValueError(const ValueFailure.unexpected(
      //     failedValue: "DiskCache@getRequest error"));
    }
  }

  Future<void> removeRequest<T>(List<dynamic> request) async {
    try {
      final hashed = hash<T>(request);
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/st_$hashed');
      await file.delete();
    } catch (ex) {
      throw UnexpectedValueError(const ValueFailure.unexpected(
          failedValue: "DiskCache@removeRequest error"));
    }
  }

  String hash<T>(List<dynamic> params) {
    String res = T.toString();
    for (final param in params) {
      if (param != null && param is double) {
        res += param.toStringAsFixed(2);
      } else {
        res += param?.toString() ?? '';
      }
    }
    final digest = md5.convert(const Utf8Encoder().convert(res));
    return hex.encode(digest.bytes);
  }
}
