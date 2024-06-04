import 'package:my_website/src/core/config/app_imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        HomePageCubit cubit = HomePageCubit.get(context);
        return BlocConsumer<LayoutCubit, LayoutState>(
          listener: (context, state) {},
          builder: (context, state) {
            LayoutCubit.get(context).changePage(0);
            return Scaffold(
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    /// name and data and profile picture
                    SizedBox(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 736) {
                            ///web
                            return Container(
                              height: 500,
                              decoration: BoxDecoration(
                                color: color,
                              ),
                              child: Row(
                                children: [
                                  /// Name and Data
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          dataWidget(context),
                                          dataButtonsWidget(
                                            hireMe: () {
                                              cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                                            },
                                            portfolio: () {
                                              LayoutCubit.get(context).changePage(2);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  /// Profile Picture
                                  const Expanded(
                                    flex: 4,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          minRadius: 80,
                                          maxRadius: 120,
                                          backgroundImage: AssetImage('assets/profileImage.jpg'),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                            );
                          } else {
                            ///mobile
                            return Container(
                              height: 800,
                              decoration: BoxDecoration(
                                color: color,
                              ),
                              child: Column(
                                children: [
                                  /// Profile Picture
                                  const Expanded(
                                    flex: 4,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          minRadius: 80,
                                          maxRadius: 120,
                                          backgroundImage: AssetImage('assets/profileImage.jpg'),
                                        )
                                      ],
                                    ),
                                  ),

                                  /// Name and Data
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          dataWidget(context),
                                          dataButtonsWidget(
                                            hireMe: () {
                                              cubit.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
                                            },
                                            portfolio: () {
                                              LayoutCubit.get(context).changePage(2);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),

                    /// who am i
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      child: whoAmIWidget(
                          context: context,
                          downloadCv: () {
                            cubit.launch(
                                url:
                                    'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');
                          }),
                    ),

                    /// Services
                    services(),

                    /// contact with me
                    contactWithMe(context),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
