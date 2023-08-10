import 'package:realm/realm.dart';
import 'package:to_do/src/modules/new_schedule/data/datasource/save_datasource.dart';
import 'package:to_do/src/modules/new_schedule/data/models/save_schedule_model.dart';
import 'package:to_do/src/modules/new_schedule/domain/entity/schedule_entity.dart';

class SaveDatasourceImpl implements SaveDatasource {
  final Realm realm;
  SaveDatasourceImpl({
    required this.realm,
  });
  @override
  void saveSchedule({required SaveScheduleEntity schedule}) {
    try {
      realm.write(() {
        realm.add<SaveScheduleModel>(SaveScheduleModel(
          schedule.title,
          schedule.description,
          schedule.initialDate,
          schedule.targetDate,
        ));
      });
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
