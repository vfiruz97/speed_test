import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/notification/notification_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/rate/rate_bloc.dart';
import 'package:speed_test/presentation/core/main_page.dart';
import 'package:speed_test/presentation/subscription/subscription_page.dart';

void main() {
  runApp(SpeedTestApp());
}

class SpeedTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
          ),
          appBarTheme: AppBarTheme.of(context).copyWith(
            backgroundColor: Colors.black,
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
        //child: const SubscriptionPage(),
        child: MainPage(),
      ),
    );
  }
}
