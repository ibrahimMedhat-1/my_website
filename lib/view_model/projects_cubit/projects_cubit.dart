import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsInitial());

  static ProjectsCubit get(context) => BlocProvider.of(context);
  List<Map<String, dynamic>> projects = [
    {
      'pic': 'assets/service_images/ui_ux.png',
      'name': 'ui / ux',
      'type': 'ui App',
      'tools': 'Flutter Firebase',
    },
    {
      'pic': 'assets/service_images/ui_ux.png',
      'name': 'talk to me',
      'type': 'social media app',
      'tools': 'Flutter Firebase',
    },
  ];
}
