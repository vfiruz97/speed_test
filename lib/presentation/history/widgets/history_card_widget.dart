import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speed_test/application/page_navigation/page_navigation_bloc.dart';
import 'package:speed_test/application/page_navigation/pages_name.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/presentation/history/widgets/history_body_card_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_footer_card_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_header_card_widget.dart';

class HistoryCardWidget extends StatelessWidget {
  const HistoryCardWidget({
    Key key,
    @required this.speed,
  }) : super(key: key);

  final Speed speed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<PageNavigationBloc>(context).add(
          PageNavigationEvent.changedCurrentPage(
            newCurrentPage: PageName.historyShow,
            newCurrentBottomNavigationIndex: 1,
            data: speed,
          ),
        );
      },
      child: Container(
        height: 96,
        padding:
            const EdgeInsets.only(left: 16, top: 16, right: 24, bottom: 16),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(18, 20, 32, 0.8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            const HistoryHeaderCardWidget(),
            const SizedBox(height: 8),
            HistoryBodyCardWidget(speed: speed),
            HistoryFooterCardWidget(speed: speed),
          ],
        ),
      ),
    );
  }
}
