import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  final String title;
  final bool isCompleted;
  final String id;
  const TaskModel({
    required this.title,
    required this.isCompleted,
    required this.id,
  });
  @override
  List<Object> get props => [title, isCompleted, id];
}
