import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/modules/new_schedule/presenter/controller/schedule_controller.dart';
import 'package:to_do/src/shared/resources/app_assets.dart';
import 'package:to_do/src/shared/resources/app_utils.dart';
import 'package:to_do/src/shared/theme/app_theme/custom_icons.dart';

class CreateSchedulePage extends StatefulWidget {
  const CreateSchedulePage({Key? key}) : super(key: key);

  @override
  State<CreateSchedulePage> createState() => _CreateSchedulePageState();
}

class _CreateSchedulePageState extends State<CreateSchedulePage> {
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final ScrollController scrollControllerTextField = ScrollController();

  final controller = ScheduleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New schedule'),
        leading: IconButton(
          icon: const CustomIcon(
            path: AppAssets.navigateBack,
          ),
          onPressed: () => Modular.to.navigate('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Scrollbar(
                      controller: scrollControllerTextField,
                      child: TextFormField(
                        controller: descriptionController,
                        scrollController: scrollControllerTextField,
                        maxLines: 3,
                        minLines: 2,
                        decoration: const InputDecoration(
                          label: Text('Decription'),
                        ),
                      ),
                    )),
                  ]),
              const SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: startDateController,
                      readOnly: true,
                      onTap: () async => await datePicker(context,
                          dateController: startDateController,
                          hourController: startTimeController),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CustomIcon(
                            path: AppAssets.calendar,
                          ),
                        ),
                        label: Text('Start date'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: TextFormField(
                      controller: startTimeController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CustomIcon(
                            path: AppAssets.time,
                            size: 16,
                          ),
                        ),
                        hintText: 'Start time',
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: endDateController,
                      readOnly: true,
                      onTap: () async => await datePicker(context,
                          dateController: endDateController,
                          hourController: endTimeController),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CustomIcon(
                            path: AppAssets.calendar,
                            size: 16,
                          ),
                        ),
                        label: Text('End date'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: TextFormField(
                      controller: endTimeController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CustomIcon(
                            path: AppAssets.time,
                            size: 16,
                          ),
                        ),
                        hintText: 'End time',
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 32),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => controller.saveSchedule(
                        title: titleController.text,
                        description: descriptionController.text,
                        startDate: DateTime.now(),
                        endDate: DateTime.now(),
                      ),
                      child: const Text('Save'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> datePicker(context,
      {required TextEditingController dateController, hourController}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2050));

    if (pickedDate != null) {
      TimeOfDay? pickedTime = await showTimePicker(
          context: context, initialTime: TimeOfDay.fromDateTime(pickedDate));

      if (pickedTime != null) {
        final date = combineDateTime(pickedDate, pickedTime);
        dateController.text = formatDate(date);
        hourController.text = formatTime(date);
      }
    }
  }
}
