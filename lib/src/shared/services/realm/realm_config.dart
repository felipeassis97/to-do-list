import 'package:realm/realm.dart';
import 'package:to_do_list/src/shared/services/realm/models/schedule_model.dart';

var config = Configuration.local([
  ScheduleModel.schema,
]);
