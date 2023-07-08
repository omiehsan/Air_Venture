import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constaints/styles_colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.065,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        child: Text(
          title,
          style: Styles.logintxt,
        ),
      ),
    );
  }
}
