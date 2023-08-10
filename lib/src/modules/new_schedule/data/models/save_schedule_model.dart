import 'package:realm/realm.dart';
part 'save_schedule_model.g.dart';

@RealmModel()
class _SaveScheduleModel {
  late String title;
  late String description;
  late DateTime initialDate;
  late DateTime targetDate;
}
