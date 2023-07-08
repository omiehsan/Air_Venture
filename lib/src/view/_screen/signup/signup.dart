import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_bottom_widget.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_form_widget.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_item_widget.dart';
import '../../../utils/widgets/form/form_header _widget.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: 'assets/images/banners/login_animation.png',
                  title: "Hello!",
                  subtitle: "Create an account to explore your journey.",
                ),
                SignUpFormWidget(),
                SignUpItemWidget(),
                SignUpBottomWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
