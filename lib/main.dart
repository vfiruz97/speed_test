import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/notification/notification_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/rate/rate_bloc.dart';
import 'package:speed_test/presentation/core/main_page.dart';

void main() {
  runApp(SpeedTestApp());
}

class SpeedTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromRGBO(23, 34, 48, 1),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(16, 26, 38, 1),
            selectedItemColor: Color.fromRGBO(111, 227, 19, 1),
          ),
          appBarTheme: AppBarTheme.of(context).copyWith(
            backgroundColor: const Color.fromRGBO(23, 34, 48, 1),
          )),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PageNavigationBloc()),
          BlocProvider(create: (context) => NotificationBloc()),
          BlocProvider(
            create: (context) =>
                RateBloc()..add(const RateEvent.showRateDialog()),
          ),
        ],
        // child: const SubscriptionPage(),
        child: MainPage(),
      ),
    );
  }
}
