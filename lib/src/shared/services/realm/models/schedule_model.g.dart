// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ScheduleModel extends _ScheduleModel
    with RealmEntity, RealmObjectBase, RealmObject {
  ScheduleModel(
    String title,
    String description,
    DateTime initialDate,
    DateTime targetDate,
    bool done,
  ) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'initialDate', initialDate);
    RealmObjectBase.set(this, 'targetDate', targetDate);
    RealmObjectBase.set(this, 'done', done);
  }

  ScheduleModel._();

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
  bool get done => RealmObjectBase.get<bool>(this, 'done') as bool;
  @override
  set done(bool value) => RealmObjectBase.set(this, 'done', value);

  @override
  Stream<RealmObjectChanges<ScheduleModel>> get changes =>
      RealmObjectBase.getChanges<ScheduleModel>(this);

  @override
  ScheduleModel freeze() => RealmObjectBase.freezeObject<ScheduleModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ScheduleModel._);
    return const SchemaObject(
        ObjectType.realmObject, ScheduleModel, 'ScheduleModel', [
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('initialDate', RealmPropertyType.timestamp),
      SchemaProperty('targetDate', RealmPropertyType.timestamp),
      SchemaProperty('done', RealmPropertyType.bool),
    ]);
  }
}
