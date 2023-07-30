import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/modules/schedule/presenter/controller/schedule_controller.dart';
import 'package:to_do_list/src/shared/resources/app_assets.dart';
import 'package:to_do_list/src/shared/widgets/other_schedule_list_widget.dart';
import 'package:to_do_list/src/shared/widgets/today_schedule_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScheduleController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              AppAssets.settings,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            ValueListenableBuilder(
                valueListenable: controller.schedules,
                builder: (context, value, child) {
                  return value.isEmpty
                      ? const Text('Empty')
                      : TodayScheduleWidget(
                          schedules: value,
                        );
                }),
            const SizedBox(height: 24),
            ValueListenableBuilder(
                valueListenable: controller.schedules,
                builder: (context, value, child) {
                  return value.isEmpty
                      ? const Text('Empty')
                      : OtherScheduleListWidget(
                          schedules: value,
                        );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset(
          AppAssets.edit,
          height: 32,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onBackground, BlendMode.srcIn),
        ),
        onPressed: () {
          controller.saveSchedule(
              schedule: ScheduleEntity(
                  title: 'Test 1',
                  description:
                      'kjsdfhkjdsh sdkjfhskdj sdkjfhsd fdskjfhdskjf utsduyas',
                  initialDate: DateTime.now(),
                  targetDate: DateTime.now(),
                  done: true));

          controller.getAllSchedules();
        },
      ),
    );
  }
}
