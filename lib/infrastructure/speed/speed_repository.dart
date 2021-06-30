import 'package:speed_test/domain/core/errors.dart';
import 'package:speed_test/domain/core/failures.dart';
import 'package:speed_test/domain/speed/i_speed_repository.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/database/storage/disk_cache.dart';
import 'package:speed_test/infrastructure/speed/speed_dao.dart';

class SpeedRepository implements ISpeedRepository {
  final DiskCache diskCache;
  static const maxLimit = 3;

  Future<bool> pastLimit() async {
    final speeds = await getAll();
    return speeds.length > maxLimit;
  }

  SpeedRepository() : diskCache = DiskCache();

  @override
  Future<void> delete(Speed speed) async {
    try {
      if (speed != null) {
        final Map<String, String> speedJson =
            SpeedDao.fromDomain(speed).toJson();
        final Map<String, dynamic> speedList =
            await diskCache.getRequest(['speed']) as Map<String, dynamic>;
        if (speedList != null && speedList.isNotEmpty) {
          speedList.removeWhere((key, _) => key == speedJson['id']);
          await diskCache.setRequest(['speed'], speedList);
        }
      }
    } catch (ex) {
      throw UnexpectedValueError(
          ValueFailure<String>.unexpected(failedValue: ex.toString()));
    }
  }

  @override
  Future<List<Speed>> getAll() async {
    try {
      final Map<String, dynamic> speedList =
          await diskCache.getRequest(['speed']) as Map<String, dynamic>;
      if (speedList != null) {
        final List<Speed> speeds = speedList.entries
            .map((e) =>
                SpeedDao.fromJson(e.value as Map<String, dynamic>).toDomain())
            .toList();
        return speeds.reversed.toList();
      } else {
        return <Speed>[];
      }
    } catch (ex) {
      throw UnexpectedValueError(
          ValueFailure<String>.unexpected(failedValue: ex.toString()));
    }
  }

  @override
  Future<Speed> getLast() async {
    try {
      final Map<String, dynamic> speedList =
          await diskCache.getRequest(['speed']) as Map<String, dynamic>;
      if (speedList != null) {
        final List<Speed> speeds = speedList.entries
            .map((e) =>
                SpeedDao.fromJson(e.value as Map<String, dynamic>).toDomain())
            .toList();
        return speeds.last;
      } else {
        return null;
      }
    } catch (ex) {
      throw UnexpectedValueError(
          ValueFailure<String>.unexpected(failedValue: ex.toString()));
    }
  }

  @override
  Future<void> saveSpeed(Speed speed) async {
    try {
      final Map<String, String> speedJson = SpeedDao.fromDomain(speed).toJson();
      final Map<String, dynamic> speedList =
          await diskCache.getRequest(['speed']) as Map<String, dynamic>;
      if (speedList != null && speedList.isNotEmpty) {
        speedList.putIfAbsent(speedJson['id'], () => speedJson);
        await diskCache.setRequest(['speed'], speedList);
      } else {
        final Map<String, dynamic> object = {speedJson['id']: speedJson};
        await diskCache.setRequest(['speed'], object);
      }
    } catch (ex) {
      throw UnexpectedValueError(
          ValueFailure<String>.unexpected(failedValue: ex.toString()));
    }
  }

  @override
  Future<void> deleteAll() async {
    try {
      await diskCache.removeRequest(['speed']);
    } catch (ex) {
      throw UnexpectedValueError(
          ValueFailure<String>.unexpected(failedValue: ex.toString()));
    }
  }
}
