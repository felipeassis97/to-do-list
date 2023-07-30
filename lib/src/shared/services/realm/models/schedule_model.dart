import 'package:realm/realm.dart';
part 'schedule_model.g.dart';

@RealmModel()
class _ScheduleModel {
  late String title;
  late String description;
  late DateTime initialDate;
  late DateTime targetDate;
  late bool done;
}
