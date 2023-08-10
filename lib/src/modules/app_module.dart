import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:to_do/src/modules/new_schedule/create_schedule_module.dart';
import 'package:to_do/src/modules/schedule/schedule_module.dart';
import 'package:to_do/src/shared/services/realm/realm_config.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.instance<Realm>(Realm(config)),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: ScheduleModule()),
        ModuleRoute('/create', module: CreateScheduleModule()),
      ];
}
