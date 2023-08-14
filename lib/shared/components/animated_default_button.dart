import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultButton extends StatefulWidget {
  final String text;
  final double borderRadius;
  final double fontSize;
  final double width;
  final double height;
  final Color borderColor;
  final double marginTop;
  final double marginRight;
  final bool isSelected;
  Color containerColor;
  Color textColor;
  final Function onTap;
  final Color animationContainerColor;
  final Color animationTextColor;
  final Color mainContainerColor;
  final Color mainTextColor;

  DefaultButton({
    super.key,
    required this.mainContainerColor,
    required this.mainTextColor,
    required this.animationContainerColor,
    required this.animationTextColor,
    required this.text,
    required this.borderRadius,
    required this.fontSize,
    required this.width,
    required this.height,
    required this.borderColor,
    required this.marginTop,
    required this.marginRight,
    required this.containerColor,
    required this.textColor,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      margin: EdgeInsets.only(
        top: widget.marginTop,
        right: widget.marginRight,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: widget.isSelected ? widget.animationContainerColor : widget.containerColor,
        border: Border(
          top: BorderSide(color: widget.borderColor),
          bottom: BorderSide(color: widget.borderColor),
          right: BorderSide(color: widget.borderColor, width: 2),
          left: BorderSide(color: widget.borderColor, width: 2),
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onHover: (c) {
          if (c) {
            if (widget.isSelected == false) {
              setState(() {
                widget.containerColor = widget.animationContainerColor;
                widget.textColor = widget.animationTextColor;
              });
            }
          } else {
            if (!widget.isSelected) {
              setState(() {
                widget.containerColor = widget.mainContainerColor;
                widget.textColor = widget.mainTextColor;
              });
            }
          }
        },
        onTap: () {
          widget.onTap();
        },
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.isSelected ? widget.animationTextColor : widget.textColor,
              fontSize: widget.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
