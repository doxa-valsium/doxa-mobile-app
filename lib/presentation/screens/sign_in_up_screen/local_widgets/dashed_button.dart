import 'package:dotted_border/dotted_border.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_dotted_border.dart';
import 'package:flutter/material.dart';

class DashedButton extends StatelessWidget {
  final double height;
  final double borderRadius;
  final double dashLineRadius;
  final Color color;
  final String buttonText;
  final VoidCallback func;

  const DashedButton({
    Key? key,
    required this.height,
    required this.borderRadius,
    required this.dashLineRadius,
    required this.color,
    required this.buttonText,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDottedBorder(
      strokeWidth: 1,
      borderType: BorderType.RRect,
      radius: Radius.circular(dashLineRadius),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color: color,
        child: InkWell(
          onTap: func,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent.withOpacity(0.1),
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.button,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
