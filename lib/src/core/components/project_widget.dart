import 'package:my_website/src/core/config/app_imports.dart';

class ProjectWidget extends StatefulWidget {
  final Function() onTap;
  final String image;
  final String name;
  final String type;
  final String tools;

  const ProjectWidget({
    super.key,
    required this.onTap(),
    required this.image,
    required this.name,
    required this.type,
    required this.tools,
  });

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 110,
          width: 350,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: widget.onTap,
          child: Container(
            height: 500,
            width: 300,
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(widget.name, style: const TextStyle(color: Colors.blue)),
                          const SizedBox(height: 10),
                          Text(widget.type),
                          const SizedBox(height: 10),
                          const Text('Tools & Languages', style: TextStyle(color: Colors.blue)),
                          const SizedBox(height: 10),
                          Text(widget.tools, style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
