import 'package:equatable/equatable.dart';

class SaveScheduleEntity extends Equatable {
  final String title;
  final String description;
  final DateTime initialDate;
  final DateTime targetDate;

  const SaveScheduleEntity({
    required this.title,
    required this.description,
    required this.initialDate,
    required this.targetDate,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        initialDate,
        targetDate,
      ];
}
