import 'package:flutter_svg/svg.dart';
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
                            return SizedBox(
                              height: 500,
                              child: Row(
                                children: [
                                  /// Name and Data
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          dataWidget(context),
                                          dataButtonsWidget(
                                            hireMe: () {
                                              cubit.launch(
                                                  url:
                                                      'mailto:ibrahimmedhat112@gmail.com');
                                            },
                                            portfolio: () {
                                              LayoutCubit.get(context)
                                                  .changePage(2);
                                            },
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/Icon.svg'),
                                              const SizedBox(width: 10),
                                              const Text("+20 106 417 2976"),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/Icon2.svg'),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                      "Ibrahimmedhat112@gmail.com"),
                                                ],
                                              ),
                                              const SizedBox(width: 25),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/Icon3.svg'),
                                                  const SizedBox(width: 10),
                                                  const Text(
                                                      "Maadi, Cairo, Egypt"),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Container(
                                            width: 500, // Length of the line
                                            height: 0.5, // Thickness of the line
                                            color: Colors
                                                .grey, // Color of the line
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //Profile Picture
                                  Expanded(
                                    flex: 6,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.6,
                                          child: ClipRect(
                                            child: Image.asset(
                                              'assets/Group 1321316017.png',
                                              fit: BoxFit
                                                  .cover, // Cover the container
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Follow Me
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Rotated Text
                                        const RotatedBox(
                                          quarterTurns: 1, // Rotate 90 degrees
                                          child: Text(
                                            'Follow Me :',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        const SizedBox(height: 10), // Spacing
                                        // Line
                                        RotatedBox(
                                          quarterTurns: 1,
                                          child: Container(
                                            width: 80, // Length of the line
                                            height: 1, // Thickness of the line
                                            color: Colors
                                                .black, // Color of the line
                                          ),
                                        ),
                                        const SizedBox(height: 20), // Spacing
                                        // SVG Icons
                                        RotatedBox(
                                          quarterTurns: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/facebook-4 1.svg'),
                                              const SizedBox(width: 20),
                                              SvgPicture.asset(
                                                  'assets/instagram-5 1.svg'),
                                              const SizedBox(width: 20),
                                              SvgPicture.asset(
                                                  'assets/linkedin-icon-2 1.svg'),
                                            ],
                                          ),
                                        ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          minRadius: 80,
                                          maxRadius: 120,
                                          backgroundImage: AssetImage(
                                              'assets/profileImage.jpg'),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          dataWidget(context),
                                          dataButtonsWidget(
                                            hireMe: () {
                                              cubit.launch(
                                                  url:
                                                      'mailto:ibrahimmedhat112@gmail.com');
                                            },
                                            portfolio: () {
                                              LayoutCubit.get(context)
                                                  .changePage(2);
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30),
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
