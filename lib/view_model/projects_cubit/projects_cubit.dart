import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsInitial());

  static ProjectsCubit get(context) => BlocProvider.of(context);
  late String description;
  void showProjectDescription(String description) {
    this.description = description;
    emit(ShowProjectDescription());
  }
}
