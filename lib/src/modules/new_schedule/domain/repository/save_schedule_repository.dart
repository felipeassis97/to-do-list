import 'package:result_dart/result_dart.dart';
import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';

abstract interface class SaveRepository {
  Result<Unit, Exception> saveSchedules({required SaveScheduleEntity schedule});
}
