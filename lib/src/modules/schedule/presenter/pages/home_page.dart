import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/modules/schedule/presenter/controller/schedule_controller.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';
import 'package:to_do/src/shared/widgets/custom_illustration.dart';
import 'package:to_do/src/shared/widgets/other_schedule_list_widget.dart';
import 'package:to_do/src/shared/widgets/today_schedule_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    controller.getAllSchedules();
  }

  final controller = ScheduleController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CustomIcon(
              path: AppAssets.settings,
              size: 36,
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
                      ? const Center(
                          child: CustomIllustration(
                            path: AppAssets.empty,
                          ),
                        )
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
        child: const CustomIcon(
          path: AppAssets.edit,
          size: 28,
        ),
        onPressed: () => Modular.to.navigate('/create'),
      ),
    );
  }
}
