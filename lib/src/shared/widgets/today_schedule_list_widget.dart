import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/shared/resources/app_assets.dart';
import 'package:to_do_list/src/shared/widgets/today_schedule_item_widget.dart';

class TodayScheduleWidget extends StatefulWidget {
  final List<ScheduleEntity> schedules;
  const TodayScheduleWidget({Key? key, required this.schedules})
      : super(key: key);

  @override
  State<TodayScheduleWidget> createState() => _TodayScheduleWidgetState();
}

class _TodayScheduleWidgetState extends State<TodayScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppAssets.check,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
            ),
            const SizedBox(width: 10),
            Text(
              'Today Tasks: ',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.schedules.length,
            itemBuilder: (context, index) {
              return const TodayScheduleItemWidget();
            }),
      ],
    );
  }
}
