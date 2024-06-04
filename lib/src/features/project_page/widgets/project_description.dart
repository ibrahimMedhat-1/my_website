import 'dart:ui';

import 'package:my_website/src/core/config/app_imports.dart';

class ProjectDescription extends StatefulWidget {
  const ProjectDescription({super.key});

  @override
  State<ProjectDescription> createState() => _ProjectDescriptionState();
}

class _ProjectDescriptionState extends State<ProjectDescription> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  String? description;
  bool isDismissed = true;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
      reverseDuration: const Duration(milliseconds: 200),
    );

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          isDismissed = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastLinearToSlowEaseIn, reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectsCubit, ProjectsState>(
      listener: (context, state) {
        if (state is ShowProjectDescription) {
          setState(() {
            isDismissed = false;
            description = ProjectsCubit.get(context).description;
            _animationController.forward();
          });
        }
      },
      builder: (context, state) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaY: _animation1.value, sigmaX: _animation1.value),
          child: InkWell(
            onTap: () {
              _animationController
                ..reverse
                ..reset();
            },
            child: Container(
              height: isDismissed ? 0 : double.infinity,
              width: isDismissed ? 0 : double.infinity,
              color: Colors.black.withOpacity(0.4),
              child: Center(
                child: Transform.scale(
                  scale: _animation3.value,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(_animation2.value),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      description ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
