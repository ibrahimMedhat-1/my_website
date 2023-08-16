import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/core.dart';

part 'about_state.dart';

class AboutCubit extends Cubit<AboutState> {
  AboutCubit() : super(AboutInitial());

  static AboutCubit get(context) => BlocProvider.of(context);

  List<String> languages = [
    'Flutter Development',
    'Clean code',
    'Firebase Services',
    'Dart',
    'Localization',
    'State Management Cubit',
    'Animation',
    'Rest API ',
    'SOLID Principles',
    'Data Structure',
    'Problem Solving',
    'Debugging',
    'HTML',
    'C#',
    'CSS',
    'Python',
    'OOP',
    'SQL',
    'C++',
  ];
  OS os = OS.web;
  void changeOS(os) {
    this.os = os;
    emit(ChangeOS());
  }

  void launch({required String url}) async {
    final link = Uri.parse(url);
    if (await canLaunchUrl(link)) {
      launchUrl(link);
    }
  }
}
