import 'package:equatable/equatable.dart';

class ScheduleEntity extends Equatable {
  final String title;
  final String description;
  final DateTime initialDate;
  final DateTime targetDate;
  final bool done;

  const ScheduleEntity({
    required this.title,
    required this.description,
    required this.initialDate,
    required this.targetDate,
    required this.done,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        initialDate,
        targetDate,
        done,
      ];
}
