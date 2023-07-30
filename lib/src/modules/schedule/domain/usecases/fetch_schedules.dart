import 'package:result_dart/result_dart.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/modules/schedule/domain/repository/schedule_repository.dart';

abstract interface class FetchSchedules {
  Result<List<ScheduleEntity>, Exception> fetchSchedules();
}

class FetchSchedulesImpl implements FetchSchedules {
  final RepositorySchedule repository;
  FetchSchedulesImpl({
    required this.repository,
  });

  @override
  Result<List<ScheduleEntity>, Exception> fetchSchedules() {
    return repository.fetchSchedules();
  }
}
