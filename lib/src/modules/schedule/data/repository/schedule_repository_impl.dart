import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/schedule/data/datasource/cache/cache_schedule.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/modules/schedule/domain/repository/schedule_repository.dart';

class RepositoryScheduleImpl implements RepositorySchedule {
  final CacheSchedule datasource;
  RepositoryScheduleImpl({
    required this.datasource,
  });

  @override
  Result<Unit, Exception> deleteAllSchedules() {
    try {
      datasource.deleteAll();
      return Success.unit();
    } on Exception catch (e) {
      return Failure(Exception(e));
    }
  }

  @override
  Result<List<ScheduleEntity>, Exception> fetchSchedules() {
    try {
      final result = datasource.getSchedule();
      return Success(result);
    } on Exception catch (e) {
      return Failure(Exception(e));
    }
  }
}
