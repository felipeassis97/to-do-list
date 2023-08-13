import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do/src/modules/schedule/domain/repository/schedule_repository.dart';

abstract interface class FetchLateSchedules {
  Result<List<ScheduleEntity>, Exception> fetchLateSchedules();
}

class FetchLateSchedulesImpl implements FetchLateSchedules {
  final RepositorySchedule repository;
  FetchLateSchedulesImpl({
    required this.repository,
  });

  @override
  Result<List<ScheduleEntity>, Exception> fetchLateSchedules() {
    return repository.fetchLateSchedules();
  }
}
