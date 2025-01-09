import 'package:flutter_svg/svg.dart';
import 'package:my_website/src/core/config/app_imports.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final List<String> imageUrls = [
    'assets/0e2777f76d7f2c74ba688503be5c2d8d.webp',
    'assets/1_wdo3tlCmfPAsFL-QTN-TBg.jpg',
    'assets/1718961418.webp',

  ];

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
                    // name and data and profile picture
                    SizedBox(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 736) {
                            ///web
                            return SizedBox(
                              height: 500,
                              child: Row(
                                children: [
                                  //Name and Data
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
                                            width: 500,
                                            // Length of the line
                                            height: 0.5,
                                            // Thickness of the line
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

                    //Experiences
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Experiences',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 300, // Width of the thin line
                                    height: 1, // Height of the thin line
                                    color: Colors.grey, // Color of the thin line
                                  ),
                                  Container(
                                      width: 150, // Width of the thick line
                                      height: 6, // Height of the thick line
                                      color: AppColors
                                          .mainColor // Color of the thick line
                                      ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. Sodales ',
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 35),
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  color: AppColors.mainColor,
                                  width: 5,
                                ),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(2, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'First Experience',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla purus arcu, varius eget velit non, laoreet imperdiet orci. Mauris ultrices eget lorem ac vestibulum.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 35),
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  offset: Offset(2, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Second Experience',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla purus arcu, varius eget velit non, laoreet imperdiet orci. Mauris ultrices eget lorem ac vestibulum.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),

                    /// Projects
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Creative Works',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                    ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Latest',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 35,
                                        ),
                                  ),
                                  Text(
                                    ' Projects',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.mainColor,
                                          fontSize: 35,
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              DefaultButton(
                                text: 'Explore More',
                                onTap: (){},
                                borderRadius: 8,
                                fontSize: 16,
                                width: 200,
                                height: 50,
                                borderColor: AppColors.mainColor,
                                marginTop: 0,
                                marginRight: 0,
                                containerColor: AppColors.mainColor,
                                mainContainerColor: AppColors.mainColor,
                                animationContainerColor: AppColors.mainColor.withAlpha(60),
                                textColor: Colors.white,
                                mainTextColor: Colors.white,
                                animationTextColor: AppColors.mainColor,
                                isSelected: false,
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 300,
                            width: 800,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageUrls.length,
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 300,

                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(4),
                                      child: Image.asset(
                                        imageUrls[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //services
                    const SizedBox(height: 40),
                    Column(
                      children: [
                        const Text(
                          'Services',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 300, // Width of the thin line
                              height: 1, // Height of the thin line
                              color: Colors.grey, // Color of the thin line
                            ),
                            Container(
                                width: 150, // Width of the thick line
                                height: 6, // Height of the thick line
                                color: AppColors
                                    .mainColor // Color of the thick line
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. Sodales ',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: Row(
                        spacing: 40,

                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/service1.svg',width: 70,height: 70,),
                                const SizedBox(height: 10),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'UI Implementation',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. Sodales Laoreet magna felis mi amet ',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                SvgPicture.asset('assets/service2.svg',width: 70,height: 70,),
                                const SizedBox(height: 10),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'UI Implementation',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. Sodales Laoreet magna felis mi amet ',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                SvgPicture.asset('assets/Group 18.svg',width: 70,height: 70,),
                                const SizedBox(height: 10),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'UI Implementation',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  textAlign: TextAlign.center,
                                  'Mauris primis turpis Laoreet magna felis mi amet quam enim curae. Sodales Laoreet magna felis mi amet ',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),






                    // /// contact with me
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
