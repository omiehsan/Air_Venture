import 'package:flutter/material.dart';
import '../../constaints/styles_colors.dart';


class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.image,
     this.height,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String image, title, subtitle;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            image,
            height: MediaQuery.of(context).size.height*0.26,
          ),
        ),
        Text(
          title,
          style: Styles.headLineStyle1,
        ),
        Text(
          subtitle,
          style: Styles.headLineStyle7,
        ),
      ],
    );
  }
}
