import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';
import 'package:to_do/src/shared/widgets/today_schedule_item_widget.dart';

class OtherScheduleWidget extends StatefulWidget {
  const OtherScheduleWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OtherScheduleWidget> createState() => _TimeClockItemState();
}

class _TimeClockItemState extends State<OtherScheduleWidget> {
  final expandedController = ExpandableController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context)
                .colorScheme
                .outline
                .withOpacity(0.4), // Cor da sombra
            spreadRadius: -1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ExpandableNotifier(
        controller: expandedController,
        child: Expandable(
          collapsed: GestureDetector(
            onTap: () {
              expandedController.toggle();
            },
            child: IntrinsicHeight(
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 6,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outline,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Tomorrow Tasks ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Spacer(),
                  const CustomIcon(
                    path: AppAssets.expand,
                  ),
                ],
              ),
            )),
          ),
          expanded: GestureDetector(
            onTap: () {
              expandedController.toggle();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 6,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.outline,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Tomorrow Tasks ',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          const Spacer(),
                          const CustomIcon(
                            path: AppAssets.collapse,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TodayScheduleItemWidget(),
                  const TodayScheduleItemWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
