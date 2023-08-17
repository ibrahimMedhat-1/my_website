import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  static HomePageCubit get(context) => BlocProvider.of(context);

  void launch({required String url}) async {
    final link = Uri.parse(url);
    if (await canLaunchUrl(link)) {
      launchUrl(link, mode: LaunchMode.externalApplication);
    }
  }
}
