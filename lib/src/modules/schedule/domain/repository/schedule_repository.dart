import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';

abstract interface class RepositorySchedule {
  Result<Unit, Exception> deleteAllSchedules();
  Result<List<ScheduleEntity>, Exception> fetchSchedules();
  Result<List<ScheduleEntity>, Exception> fetchLateSchedules();
}
