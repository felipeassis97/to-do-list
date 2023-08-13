import 'package:intl/intl.dart';
import 'package:realm/realm.dart';
import 'package:to_do/src/modules/schedule/data/datasource/cache/cache_schedule.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/shared/services/realm/models/schedule_model.dart';

class CacheScheduleImpl implements CacheSchedule {
  final Realm realm;
  CacheScheduleImpl({required this.realm});

  @override
  void deleteAll() {
    try {
      realm.deleteAll();
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  List<ScheduleEntity> getLateSchedule() {
    try {
      List<ScheduleEntity> schedules = [];
      final result = realm.all<ScheduleModel>();

      for (var e in result) {
        schedules.add(ScheduleEntity(
          title: e.title,
          description: e.description,
          targetDate: e.targetDate,
          initialDate: e.initialDate,
          done: e.done,
        ));
      }

      return schedules;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  List<ScheduleEntity> getSchedule() {
    try {
      final date = DateFormat('yyyy-MM-dd@HH:mm:ss:S').format(DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        DateTime.now().hour,
        DateTime.now().minute,
      ));

      List<ScheduleEntity> schedules = [];
      final result = realm
          .all<ScheduleModel>()
          .query(r"intialDate == $date AND done == false");

      for (var e in result) {
        schedules.add(ScheduleEntity(
          title: e.title,
          description: e.description,
          targetDate: e.targetDate,
          initialDate: e.initialDate,
          done: e.done,
        ));
      }

      print(result.length);

      return schedules;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
