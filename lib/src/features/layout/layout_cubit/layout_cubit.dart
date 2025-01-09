import 'package:my_website/src/core/config/app_imports.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> pages = [
     HomePage(),
    const AboutPage(),
    const ProjectsPage(),
    const ContactPage(),
  ];
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
  ];
  int page = 0;

  void changePage(index) {
    if (index != page) {
      page = index;
      for (int i = 0; i < isSelected.length; i++) {
        isSelected[i] = false;
      }
      isSelected[index] = true;
      emit(ChangePage());
    }
  }
}
