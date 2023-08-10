import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:to_do/src/modules/new_schedule/data/datasource/save_datasource.dart';
import 'package:to_do/src/modules/new_schedule/data/datasource/save_datasource_impl.dart';
import 'package:to_do/src/modules/new_schedule/data/repository/save_repository_impl.dart';
import 'package:to_do/src/modules/new_schedule/domain/repository/save_schedule_repository.dart';
import 'package:to_do/src/modules/new_schedule/domain/usecases/save_schedule.dart';
import 'package:to_do/src/modules/new_schedule/presenter/pages/create_schedule_page.dart';

class CreateScheduleModule extends Module {
  @override
  List<Bind> get binds => [
        //Data
        Bind.factory<SaveDatasource>(
            (i) => SaveDatasourceImpl(realm: i<Realm>())),
        //Repository
        Bind.factory<SaveRepository>(
            (i) => SaveRepositoryImpl(datasource: i<SaveDatasource>())),
        // usecases
        Bind.factory<SaveSchedules>(
            (i) => SaveSchedulesImpl(repository: i<SaveRepository>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const CreateSchedulePage()),
      ];
}
