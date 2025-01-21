import 'package:my_website/src/core/config/app_imports.dart';

import '../../core/helper/functions/app_functions.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 7,
            children: [
              Assets.mainLogo.svg(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ibrahim Medhat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Flutter',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(
                          text: ' Developer',
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              DefaultButton(
                text: 'Home',
                onTap: () {

                },
                borderRadius: appBarRadius,
                fontSize: appBarFontSize,
                width: appBarWidth,
                height: appBarHeight,
                borderColor: Colors.transparent,
                marginTop: appBarMarginTop,
                marginRight: appBarMarginRight,
                containerColor: Colors.transparent,
                mainContainerColor: Colors.transparent,
                animationContainerColor: Colors.transparent,
                animationTextColor: AppColors.mainColor,
                textColor: Colors.black,
                mainTextColor:  Colors.black,
                isSelected: false,
              ),
              DefaultButton(
                text: 'Projects',
                onTap: () {

                },
                borderRadius: appBarRadius,
                fontSize: appBarFontSize,
                width: appBarWidth,
                height: appBarHeight,
                borderColor: Colors.transparent,
                marginTop: appBarMarginTop,
                marginRight: appBarMarginRight,
                containerColor: Colors.transparent,
                mainContainerColor: Colors.transparent,
                animationContainerColor: Colors.transparent,
                animationTextColor: AppColors.mainColor,
                textColor: Colors.black,
                mainTextColor:  Colors.black,
                isSelected: false,
              ),
              DefaultButton(
                text: 'Contact',
                onTap: () {

                },
                borderRadius: appBarRadius,
                fontSize: appBarFontSize,
                width: appBarWidth,
                height: appBarHeight,
                borderColor: Colors.transparent,
                marginTop: appBarMarginTop,
                marginRight: appBarMarginRight,
                containerColor: Colors.transparent,
                mainContainerColor: Colors.transparent,
                animationContainerColor: Colors.transparent,
                animationTextColor: AppColors.mainColor,
                textColor: Colors.black,
                mainTextColor:  Colors.black,
                isSelected: false,
              ),
              const Spacer(),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5),
            child: DefaultButton(
              text: 'Hire Me',
              onTap: (){
                AppFunctions.launch(url: 'mailto:ibrahimmedhat112@gmail.com');
              },
              borderRadius: 8,
              fontSize: 16,
              width: 150,
              height: 70,
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
          ),
          2.isWidth,
          Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
            child: DefaultButton(
              text: 'Download CV',
              onTap: (){
                AppFunctions.launch(
                    url:
                    'https://drive.google.com/file/d/1K02ioXeBJJHPuffeXTALScn_9wjVCuXV/view?usp=sharing');                            },
              borderRadius: 8,
              fontSize: 16,
              width: 150,
              height: 70,
              borderColor: AppColors.mainColor,
              marginTop: 0,
              marginRight: 0,
              containerColor: Colors.white,
              mainContainerColor: Colors.white,
              animationContainerColor: AppColors.mainColor.withAlpha(60),
              textColor: Colors.black,
              mainTextColor: AppColors.mainColor,
              animationTextColor: AppColors.mainColor,
              isSelected: false,
            ),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 50),
          child: Column(
            children: [
              const Text(
                'Project Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
                style: TextStyle(fontSize: 16),textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/1_wdo3tlCmfPAsFL-QTN-TBg.jpg',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Button 1 action
                    },
                    child: const Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button 2 action
                    },
                    child: const Text('Button 2'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                spacing: 20,
                children: [
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                  Image.asset(
                    'assets/3ac4d0162456987.63d65496bac16.png',
                    width: 200,
                    height: 400,
                  ),
                ],
              ),
              contactWithMe(context),
            ],
          ),
        ),
      ),
    );
  }
}
