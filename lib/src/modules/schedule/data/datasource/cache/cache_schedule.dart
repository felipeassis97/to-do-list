import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';

abstract interface class CacheSchedule {
  List<ScheduleEntity> getSchedule();
  void saveSchedule({required ScheduleEntity schedule});
  void deleteAll();
}
