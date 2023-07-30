import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_list/src/resources/app_assets.dart';
import 'package:to_do_list/src/widgets/today_schedules_item_widget.dart';

class TodaySchedulesWidget extends StatefulWidget {
  const TodaySchedulesWidget({Key? key}) : super(key: key);

  @override
  State<TodaySchedulesWidget> createState() => _TodaySchedulesWidgetState();
}

class _TodaySchedulesWidgetState extends State<TodaySchedulesWidget> {
  bool _showOptions = false;
  double _height = 500;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _showOptions = true;
        _height = 270;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: _showOptions ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: Row(
            children: [
              SvgPicture.asset(
                AppAssets.check,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onBackground,
                    BlendMode.srcIn),
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
        ),
        const SizedBox(height: 20),
        AnimatedOpacity(
          opacity: _showOptions ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
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
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            height: _height,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TodaySchedulesItemWidget(),
                  TodaySchedulesItemWidget(),
                  TodaySchedulesItemWidget(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
