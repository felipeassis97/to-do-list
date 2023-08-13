import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/modules/schedule/presenter/controller/schedule_controller.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';
import 'package:to_do/src/shared/widgets/app_bar/custom_app_bar.dart';
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
    controller.getTodaySchedules();
    controller.getOtherSchedules();
  }

  final controller = ScheduleController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              children: [
                ValueListenableBuilder(
                    valueListenable: controller.todaySchedules,
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
                    valueListenable: controller.otherSchedules,
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: CustomIcon(
          path: AppAssets.edit,
          size: 28,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        onPressed: () => Modular.to.navigate('/create'),
      ),
    );
  }
}
