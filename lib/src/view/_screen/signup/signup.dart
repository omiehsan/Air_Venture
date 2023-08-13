import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_bottom_widget.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_form_widget.dart';
import 'package:hawai_jubu/src/view/_screen/signup/signup_item_widget.dart';
import 'package:hawai_jubu/src/view/navigations/navigation_bar/bottom_bar.dart';
import '../../../utils/widgets/form/form_header _widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(
                  image: 'assets/images/banners/login_animation.png',
                  title: "Hello!",
                  subtitle: "Create an account to explore your journey.",
                ),
                SignUpFormSection(),
                SignUpItemWidget(),
                SignUpBottomWidget(),
              ],
            ),
          ),
          Positioned(
            top: 20.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomBar(),
                  ),
                );
              },
              mini: true,
               backgroundColor: Colors.brown.withOpacity(0.1),
              child: const Icon(
                Icons.close,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
