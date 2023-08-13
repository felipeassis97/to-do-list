import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';

abstract interface class CacheSchedule {
  List<ScheduleEntity> getSchedule();
  List<ScheduleEntity> getLateSchedule();
  void deleteAll();
}
