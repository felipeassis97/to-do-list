import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';
import 'package:to_do/src/modules/new_schedule/domain/repository/save_schedule_repository.dart';

abstract interface class SaveSchedules {
  Result<Unit, Exception> saveSchedules({required SaveScheduleEntity schedule});
}

class SaveSchedulesImpl implements SaveSchedules {
  final SaveRepository repository;
  SaveSchedulesImpl({
    required this.repository,
  });

  @override
  Result<Unit, Exception> saveSchedules(
      {required SaveScheduleEntity schedule}) {
    return repository.saveSchedules(schedule: schedule);
  }
}
