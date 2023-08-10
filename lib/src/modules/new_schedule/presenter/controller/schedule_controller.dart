import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';
import 'package:to_do/src/modules/new_schedule/domain/usecases/save_schedule.dart';

class ScheduleController extends ChangeNotifier {
  final saveData = Modular.get<SaveSchedules>();

  final error = ValueNotifier<String>('');

  void saveSchedule({
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    final schedule = SaveScheduleEntity(
        title: title,
        description: description,
        initialDate: startDate,
        targetDate: endDate);

    final result = saveData.saveSchedules(schedule: schedule);
    result.fold(
      (success) {
        notifyListeners();
      },
      (failure) {
        error.value = '$failure';
        notifyListeners();
      },
    );
  }
}
