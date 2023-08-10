import 'package:realm/realm.dart';
import 'package:to_do/src/modules/new_schedule/data/models/save_schedule_model.dart';
import 'package:to_do/src/shared/services/realm/models/schedule_model.dart';

var config = Configuration.local([
  ScheduleModel.schema,
  SaveScheduleModel.schema,
]);
