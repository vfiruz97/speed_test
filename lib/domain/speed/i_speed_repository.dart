import 'package:speed_test/domain/speed/speed.dart';

abstract class ISpeedRepository {
  Future<void> saveSpeed(Speed speed);
  Future<List<Speed>> getAll();
  Future<Speed> getLast();
  Future<void> delete(Speed speed);
  Future<void> deleteAll();
}
