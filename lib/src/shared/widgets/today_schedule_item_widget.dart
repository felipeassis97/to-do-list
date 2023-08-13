import 'package:flutter/material.dart';

import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/resources/app_utils.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';

class TodayScheduleItemWidget extends StatelessWidget {
  final ScheduleEntity schedule;
  const TodayScheduleItemWidget({
    Key? key,
    required this.schedule,
  }) : super(key: key);

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
      title: Text(schedule.title),
      subtitle: Column(
        children: [
          Text(schedule.description),
          const SizedBox(height: 16),
          Row(
            children: [
              const CustomIcon(
                path: AppAssets.calendarTime,
                size: 20,
              ),
              const SizedBox(width: 16),
              Text(formatDateTime(schedule.initialDate)),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const CustomIcon(
                path: AppAssets.calendarCheck,
                size: 20,
              ),
              const SizedBox(width: 16),
              Text(formatDateTime(schedule.targetDate)),
            ],
          ),
        ],
      ),
      trailing: Switch(value: false, onChanged: (value) {}),
    );
  }
}
