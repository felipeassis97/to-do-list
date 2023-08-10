import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/new_schedule/data/datasource/save_datasource.dart';
import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';
import 'package:to_do/src/modules/new_schedule/domain/repository/save_schedule_repository.dart';

class SaveRepositoryImpl implements SaveRepository {
  final SaveDatasource datasource;
  SaveRepositoryImpl({
    required this.datasource,
  });
  @override
  Result<Unit, Exception> saveSchedules(
      {required SaveScheduleEntity schedule}) {
    try {
      datasource.saveSchedule(schedule: schedule);
      return Success.unit();
    } on Exception catch (e) {
      return Failure(Exception(e));
    }
  }
}
