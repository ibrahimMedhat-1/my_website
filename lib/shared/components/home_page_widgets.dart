import 'package:flutter/material.dart';
import 'package:my_website/shared/style.dart';

import 'animated_contact_icons.dart';
import 'animated_default_button.dart';
import 'animated_services_widget.dart';

Widget dataWidget(context) => Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome!',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: complementaryColor,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Ibrahim',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 70,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Medhat',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 70,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Software Engineer / Flutter Developer / Back-End Developer / WebSite Developer / Mobile App Developer',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: complementaryColor),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );

Widget dataButtonsWidget({
  required Function() hireMe,
  required Function() portfolio,
}) =>
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DefaultButton(
          text: 'Hire Me',
          onTap: hireMe,
          borderRadius: 20,
          fontSize: 20,
          width: 150,
          height: 70,
          borderColor: Colors.transparent,
          marginTop: 0,
          marginRight: 0,
          containerColor: Colors.white,
          mainContainerColor: Colors.white,
          animationContainerColor: Colors.blue,
          textColor: Colors.blue,
          mainTextColor: Colors.blue,
          animationTextColor: Colors.white,
          isSelected: false,
        ),
        const SizedBox(
          width: 20,
        ),
        DefaultButton(
          text: 'Portfolio',
          onTap: portfolio,
          borderRadius: 20,
          fontSize: 20,
          width: 150,
          height: 70,
          borderColor: Colors.transparent,
          marginTop: 0,
          marginRight: 0,
          containerColor: Colors.white,
          mainContainerColor: Colors.white,
          animationContainerColor: Colors.blue,
          textColor: Colors.blue,
          mainTextColor: Colors.blue,
          animationTextColor: Colors.white,
          isSelected: false,
        ),
      ],
    );

Widget whoAmIWidget({
  required context,
  required Function() downloadCv,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Who Am i ?',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: complementaryColor,
              ),
        ),
        Text(
          'I\'m Ibrahim Medhat',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'I have been the first of my class for the whole four years with 3.7 GPA'
          ' and degree Excellent at my graduation project.'
          ' I dream to be an expert in Artificial intelligence and have a master degree in it.'
          ' Right now, i am looking for a junior Flutter Developer position at a company that can help me to achieve my goal.',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: complementaryColor,
                fontSize: 25,
              ),
        ),
        DefaultButton(
          text: 'Download CV',
          onTap: downloadCv,
          borderRadius: 20,
          fontSize: 20,
          width: 150,
          height: 70,
          borderColor: Colors.transparent,
          marginTop: 20,
          marginRight: 0,
          containerColor: Colors.blue,
          mainContainerColor: Colors.blue,
          animationContainerColor: Colors.grey.shade300,
          textColor: Colors.white,
          mainTextColor: Colors.white,
          animationTextColor: Colors.blue,
          isSelected: false,
        ),
      ],
    );

Widget serviceCards() => const Expanded(
      child: Row(
        children: [
          ServiceWidget(
            backgroundImage: 'assets/service_images/ui_ux.png',
            text: 'Create beautiful user interfaces with the best user experience using Figma.',
            title: 'UI / UX',
          ),
          SizedBox(
            width: 20,
          ),
          ServiceWidget(
            backgroundImage: 'assets/service_images/mobileApp.png',
            title: 'Mobile App',
            text: 'Build mobile apps for both Android & IOS.',
          ),
          SizedBox(
            width: 20,
          ),
          ServiceWidget(
            backgroundImage: 'assets/service_images/website.png',
            title: 'Website',
            text: 'Develop websites and deploying it on internet.',
          ),
        ],
      ),
    );

Widget getInTouch({
  required context,
  required Function() hireMe,
  required Function() portfolio,
}) =>
    SizedBox(
      height: 280,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GET IN TOUCH',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 30,
                ),
          ),
          Text(
            'Let\'s start  project! Hire Me',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultButton(
                text: 'Hire Me',
                onTap: hireMe,
                borderRadius: 20,
                fontSize: 20,
                width: 150,
                height: 70,
                borderColor: Colors.transparent,
                marginTop: 20,
                marginRight: 20,
                containerColor: Colors.blue,
                mainContainerColor: Colors.blue,
                animationContainerColor: Colors.grey.shade300,
                textColor: Colors.white,
                mainTextColor: Colors.white,
                animationTextColor: Colors.blue,
                isSelected: false,
              ),
              DefaultButton(
                text: 'Portfolio',
                onTap: portfolio,
                borderRadius: 20,
                fontSize: 20,
                width: 150,
                height: 70,
                borderColor: Colors.transparent,
                marginTop: 20,
                marginRight: 0,
                containerColor: Colors.blue,
                mainContainerColor: Colors.blue,
                animationContainerColor: Colors.grey.shade300,
                textColor: Colors.white,
                mainTextColor: Colors.white,
                animationTextColor: Colors.blue,
                isSelected: false,
              ),
            ],
          ),
        ],
      ),
    );

Widget contactIcons({
  required context,
  required Function() gitHub,
  required Function() linkedIn,
  required Function() whatsApp,
  required Function() faceBook,
  required Function() instagram,
}) =>
    SizedBox(
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ibrahim Medhat copyright 2023 developed by Ibrahim Medhat',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/gitHub.png',
                  onTap: gitHub,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/linkedin.png',
                  onTap: linkedIn,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/whatsapp.png',
                  onTap: whatsApp,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/facebook.png',
                  onTap: faceBook,
                ),
                const SizedBox(width: 20),
                ContactIcon(
                  icon: 'assets/contact_icons/instagram.png',
                  onTap: instagram,
                ),
              ],
            ),
          ),
        ],
      ),
    );
