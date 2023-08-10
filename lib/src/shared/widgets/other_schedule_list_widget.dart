import 'package:flutter/material.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/shared/widgets/other_schedule_widget.dart';

class OtherScheduleListWidget extends StatelessWidget {
  final List<ScheduleEntity> schedules;
  const OtherScheduleListWidget({
    Key? key,
    required this.schedules,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: OtherScheduleWidget(),
        );
      },
    );
  }
}
