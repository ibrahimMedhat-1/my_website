import 'dart:ui';

import 'package:my_website/src/core/config/app_imports.dart';

class ServiceWidgetWeb extends StatefulWidget {
  final String backgroundImage;
  final String title;
  final String text;

  const ServiceWidgetWeb({
    super.key,
    required this.backgroundImage,
    required this.title,
    required this.text,
  });

  @override
  State<ServiceWidgetWeb> createState() => _ServiceWidgetWebState();
}

class _ServiceWidgetWebState extends State<ServiceWidgetWeb> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  late Animation animationScale;
  bool start = true;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          start = false;
        } else {
          start = true;
        }
      });
    animation = Tween<double>(begin: 0, end: 100).animate(animationController);
    animationScale = Tween<double>(begin: 0, end: 1).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRect(
        child: InkWell(
          onTap: () {
            if (start) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        widget.backgroundImage,
                        fit: BoxFit.fill,
                        scale: 0.2,
                      ),
                    ),
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                    ),
                  ],
                ),
                AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) => BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: animation.value, sigmaX: animation.value),
                    child: Transform.scale(
                      scale: animationScale.value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          widget.text,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ServiceWidgetMobile extends StatefulWidget {
  final String backgroundImage;
  final String title;
  final String text;

  const ServiceWidgetMobile({
    super.key,
    required this.backgroundImage,
    required this.title,
    required this.text,
  });

  @override
  State<ServiceWidgetMobile> createState() => _ServiceWidgetMobileState();
}

class _ServiceWidgetMobileState extends State<ServiceWidgetMobile> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  late Animation animationScale;
  bool start = true;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          start = false;
        } else {
          start = true;
        }
      });
    animation = Tween<double>(begin: 0, end: 100).animate(animationController);
    animationScale = Tween<double>(begin: 0, end: 1).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRect(
        child: InkWell(
          onTap: () {
            if (start) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        widget.backgroundImage,
                        fit: BoxFit.fitWidth,
                        scale: 0.2,
                      ),
                    ),
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.blue,
                            fontSize: 25,
                          ),
                    ),
                  ],
                ),
                AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) => BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: animation.value, sigmaX: animation.value),
                    child: Transform.scale(
                      scale: animationScale.value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Text(
                          widget.text,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Colors.blue,
                                fontSize: 25,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
