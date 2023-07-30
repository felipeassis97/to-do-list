import 'package:flutter/material.dart';

class TodayScheduleItemWidget extends StatelessWidget {
  const TodayScheduleItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 6,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.error,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      title: const Text('Visit David'),
      subtitle: const Text('Lorem Ipsum Dolor Sit mets...'),
      trailing: Switch(value: false, onChanged: (value) {}),
    );
  }
}
