import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/data/cubit/task_states.dart';
import 'package:todo_list/data/model/taskModel.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitialState());

  //! Have Three Functions

  addTask(TaskModel model) {
    emit(UpdateTaskState([...state.taskList, model]));
  }

  deleteTask(int id) {
    final List<TaskModel> newList =
        state.taskList.where((task) => task.id != id).toList();
    emit(UpdateTaskState(newList));
  }

  toggleTask(int id) {
    final List<TaskModel> newList = state.taskList.map((task) {
      return task.id == id
          ? task.coptWith(isCompleted: !task.isCompleted)
          : task;
    }).toList();
  }
}
