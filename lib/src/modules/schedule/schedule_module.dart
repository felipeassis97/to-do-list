import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:to_do/src/modules/schedule/data/datasource/cache/cache_schedule.dart';
import 'package:to_do/src/modules/schedule/data/datasource/cache/cache_schedule_impl.dart';
import 'package:to_do/src/modules/schedule/data/repository/schedule_repository_impl.dart';
import 'package:to_do/src/modules/schedule/domain/repository/schedule_repository.dart';
import 'package:to_do/src/modules/schedule/domain/usecases/delete_all_schedules.dart';
import 'package:to_do/src/modules/schedule/domain/usecases/fetch_late_schedules.dart';
import 'package:to_do/src/modules/schedule/domain/usecases/fetch_schedules.dart';
import 'package:to_do/src/modules/schedule/presenter/pages/home_page.dart';

class ScheduleModule extends Module {
  @override
  List<Bind> get binds => [
        //Data
        Bind.factory<CacheSchedule>(
            (i) => CacheScheduleImpl(realm: i<Realm>())),
        //Repository
        Bind.factory<RepositorySchedule>(
            (i) => RepositoryScheduleImpl(datasource: i<CacheSchedule>())),
        // usecases
        Bind.factory<FetchSchedules>(
            (i) => FetchSchedulesImpl(repository: i<RepositorySchedule>())),
        Bind.factory<FetchLateSchedules>(
            (i) => FetchLateSchedulesImpl(repository: i<RepositorySchedule>())),
        Bind.factory<DeleteAllSchedules>(
            (i) => DeleteAllSchedulesImpl(repository: i<RepositorySchedule>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
