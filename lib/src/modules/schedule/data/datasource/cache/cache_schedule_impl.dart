import 'package:realm/realm.dart';
import 'package:to_do_list/src/modules/schedule/data/datasource/cache/cache_schedule.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/shared/services/realm/models/schedule_model.dart';

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
  List<ScheduleEntity> getSchedule() {
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
  void saveSchedule({required ScheduleEntity schedule}) {
    try {
      realm.write(() {
        realm.add<ScheduleModel>(ScheduleModel(
            schedule.title,
            schedule.description,
            schedule.initialDate,
            schedule.targetDate,
            schedule.done));
      });
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
