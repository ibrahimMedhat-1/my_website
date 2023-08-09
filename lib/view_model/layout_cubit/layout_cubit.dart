import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/about_page/about_page.dart';
import '../../view/contact_page/contact_page.dart';
import '../../view/home_page/home_page.dart';
import '../../view/project_page/project_page.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> pages = [
    const HomePage(),
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
    page = index;
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = false;
    }
    isSelected[index] = true;
    emit(ChangePage());
  }
}
