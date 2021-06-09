import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:speed_test/domain/speed/i_speed_repository.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/domain/speed/speed_info.dart';
import 'package:speed_test/domain/speed/value_objects.dart';
import 'package:speed_test/domain/speed/wifi_info.dart';
import 'package:speed_test/infrastructure/core/helpers.dart';

part 'test_speed_bloc.freezed.dart';
part 'test_speed_event.dart';
part 'test_speed_state.dart';

class TestSpeedBloc extends Bloc<TestSpeedEvent, TestSpeedState> {
  final ISpeedRepository speedRepository;

  TestSpeedBloc({
    this.speedRepository,
  }) : super(TestSpeedState.initial());

  @override
  Stream<TestSpeedState> mapEventToState(
    TestSpeedEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        yield state;
      },
      cancled: (_) async* {
        yield state.copyWith(
          speed: Speed.empty(),
        );
      },
      succed: (e) async* {
        final SpeedInfo downloadSpeed = SpeedInfo(
          value: SpeedValue(e.downloadSpeed),
          unit: SpeedUnit(e.downloadUnit),
        );
        final SpeedInfo uploadSpeed = SpeedInfo(
          value: SpeedValue(e.uploadSpeed),
          unit: SpeedUnit(e.uploadUnit),
        );
        final wifiName = await getWifiName();
        final ipAddress = await getIpAddress();
        final serverName = await getServerName();

        final wifiInfo = WifiInfo(
          wifiName: WifiName(wifiName),
          ipAddress: IpAddress(ipAddress),
          serverName: ServerName(serverName),
        );

        final String deviceName = await getDeviceName();

        final Speed speed = state.speed.copyWith(
          downloadSpeed: downloadSpeed,
          uploadSpeed: uploadSpeed,
          wifiInfo: wifiInfo,
          deviceName: DeviceName(deviceName),
        );

        await speedRepository.saveSpeed(speed);

        yield state;
      },
    );
  }
}
