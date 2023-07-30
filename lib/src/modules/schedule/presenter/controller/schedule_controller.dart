import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/modules/schedule/domain/usecases/fetch_schedules.dart';
import 'package:to_do_list/src/modules/schedule/domain/usecases/save_schedule.dart';

class ScheduleController extends ChangeNotifier {
  final fetchData = Modular.get<FetchSchedules>();
  final saveData = Modular.get<SaveSchedules>();

  final schedules = ValueNotifier<List<ScheduleEntity>>([]);

  final error = ValueNotifier<String>('');

  void getAllSchedules() {
    final result = fetchData.fetchSchedules();
    result.fold(
      (success) {
        schedules.value = success;
        notifyListeners();
      },
      (failure) {
        error.value = '$failure';
        notifyListeners();
      },
    );
  }

  void saveSchedule({required ScheduleEntity schedule}) {
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
