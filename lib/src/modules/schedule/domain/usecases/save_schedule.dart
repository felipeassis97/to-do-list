import 'package:result_dart/result_dart.dart';
import 'package:to_do_list/src/modules/schedule/domain/entities/schedule_entity.dart';
import 'package:to_do_list/src/modules/schedule/domain/repository/schedule_repository.dart';

abstract interface class SaveSchedules {
  Result<Unit, Exception> saveSchedules({required ScheduleEntity schedule});
}

class SaveSchedulesImpl implements SaveSchedules {
  final RepositorySchedule repository;
  SaveSchedulesImpl({
    required this.repository,
  });

  @override
  Result<Unit, Exception> saveSchedules({required ScheduleEntity schedule}) {
    return repository.saveSchedules(schedule: schedule);
  }
}
