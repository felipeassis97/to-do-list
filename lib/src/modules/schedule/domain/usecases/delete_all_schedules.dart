import 'package:result_dart/result_dart.dart';
import 'package:to_do_list/src/modules/schedule/domain/repository/schedule_repository.dart';

abstract interface class DeleteAllSchedules {
  Result<Unit, Exception> deleteAllSchedules();
}

class DeleteAllSchedulesImpl implements DeleteAllSchedules {
  final RepositorySchedule repository;

  DeleteAllSchedulesImpl({
    required this.repository,
  });
  @override
  Result<Unit, Exception> deleteAllSchedules() {
    return repository.deleteAllSchedules();
  }
}
