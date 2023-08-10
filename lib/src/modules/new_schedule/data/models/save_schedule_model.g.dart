// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_schedule_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class SaveScheduleModel extends _SaveScheduleModel
    with RealmEntity, RealmObjectBase, RealmObject {
  SaveScheduleModel(
    String title,
    String description,
    DateTime initialDate,
    DateTime targetDate,
  ) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'initialDate', initialDate);
    RealmObjectBase.set(this, 'targetDate', targetDate);
  }

  SaveScheduleModel._();

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  DateTime get initialDate =>
      RealmObjectBase.get<DateTime>(this, 'initialDate') as DateTime;
  @override
  set initialDate(DateTime value) =>
      RealmObjectBase.set(this, 'initialDate', value);

  @override
  DateTime get targetDate =>
      RealmObjectBase.get<DateTime>(this, 'targetDate') as DateTime;
  @override
  set targetDate(DateTime value) =>
      RealmObjectBase.set(this, 'targetDate', value);

  @override
  Stream<RealmObjectChanges<SaveScheduleModel>> get changes =>
      RealmObjectBase.getChanges<SaveScheduleModel>(this);

  @override
  SaveScheduleModel freeze() =>
      RealmObjectBase.freezeObject<SaveScheduleModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(SaveScheduleModel._);
    return const SchemaObject(
        ObjectType.realmObject, SaveScheduleModel, 'SaveScheduleModel', [
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('initialDate', RealmPropertyType.timestamp),
      SchemaProperty('targetDate', RealmPropertyType.timestamp),
    ]);
  }
}
