import 'package:my_website/src/core/config/app_imports.dart';

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

  void launch({required String url}) async {
    final link = Uri.parse(url);
    if (await canLaunchUrl(link)) {
      launchUrl(link);
    }
  }
}
