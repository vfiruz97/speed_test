import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:speed_test/domain/speed/speed.dart';
import 'package:speed_test/infrastructure/speed/speed_repository.dart';
import 'package:speed_test/presentation/core/widgets/notification_dialog_widget.dart';
import 'package:speed_test/presentation/history/widgets/history_card_widget.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final SpeedRepository speedRepository = SpeedRepository();
  List<Speed> speedList = [];

  @override
  void initState() {
    getAllSpeeds();
    super.initState();
  }

  Future<void> getAllSpeeds() async {
    speedList = await speedRepository.getAll();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: speedList.length,
      itemBuilder: (context, index) {
        return Slidable(
          key: Key(speedList[index].id.getOrCrash()),
          actionPane: SlidableDrawerActionPane(
            key: Key(speedList[index].id.getOrCrash()),
          ),
          actionExtentRatio: 0.19,
          child: Column(
            children: [
              HistoryCardWidget(
                speed: speedList[index],
                backgroundColor: index % 2 == 0
                    ? Colors.black
                    : const Color.fromRGBO(18, 20, 32, 1),
              ),
            ],
          ),
          secondaryActions: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: 56,
                    height: 168,
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Color.fromRGBO(195, 59, 59, 1),
                        ),
                        onPressed: () async {
                          final List<Map<String, bool>> result =
                              await showDialog(
                            context: context,
                            builder: (context) {
                              return const NotificationDialogWidget(
                                title: "Delete result",
                                message:
                                    "Are you sure you want to delete this result?",
                              );
                            },
                          );

                          if (result[0]["pressedYes"]) {
                            await speedRepository.delete(speedList[index]);
                            setState(() {
                              speedList.removeAt(index);
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox())
              ],
            )
          ],
        );
      },
    );
  }
}
