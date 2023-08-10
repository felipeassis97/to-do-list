import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';

abstract interface class SaveDatasource {
  void saveSchedule({required SaveScheduleEntity schedule});
}
