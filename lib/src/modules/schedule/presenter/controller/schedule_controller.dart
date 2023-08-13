import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/modules/schedule/domain/usecases/fetch_late_schedules.dart';
import 'package:to_do/src/modules/schedule/domain/usecases/fetch_schedules.dart';

class ScheduleController extends ChangeNotifier {
  final fetchData = Modular.get<FetchSchedules>();
  final fetchLateData = Modular.get<FetchLateSchedules>();

  final todaySchedules = ValueNotifier<List<ScheduleEntity>>([]);
  final otherSchedules = ValueNotifier<List<ScheduleEntity>>([]);

  final error = ValueNotifier<String>('');

  void getTodaySchedules() {
    final result = fetchData.fetchSchedules();
    result.fold(
      (success) {
        todaySchedules.value = success;
        notifyListeners();
      },
      (failure) {
        error.value = '$failure';
        notifyListeners();
      },
    );
  }

  void getOtherSchedules() {
    final result = fetchLateData.fetchLateSchedules();
    result.fold(
      (success) {
        otherSchedules.value = success;
        notifyListeners();
      },
      (failure) {
        error.value = '$failure';
        notifyListeners();
      },
    );
  }
}
