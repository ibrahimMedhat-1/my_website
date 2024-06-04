import 'package:my_website/src/core/config/app_imports.dart';

class ContactIcon extends StatefulWidget {
  final String icon;
  final Function() onTap;

  const ContactIcon({
    super.key,
    required this.icon,
    required this.onTap(),
  });

  @override
  State<ContactIcon> createState() => _ContactIconState();
}

class _ContactIconState extends State<ContactIcon> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    animation = Tween<double>(begin: 1, end: 1.5).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onHover: (details) {
          if (details) {
            setState(() {
              animationController.forward();
            });
          } else {
            setState(() {
              animationController.reverse();
            });
          }
        },
        onTap: widget.onTap,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 2,
              ),
            ],
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: ImageIcon(AssetImage(widget.icon)),
        ),
      ),
    );
  }
}
