import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/authentication/controllers/singup_controller.dart';
import '../../../utils/constaints/styles_colors.dart';
import '../../../utils/widgets/form/form_field_widget.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(SignupController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child:  FormFieldWidget(
                controller:Controller.fullName,
                prefixIcon: Icons.person_outline_outlined,
                hintText: "Full name",
                fillColor: Colors.white60,
                filled: true,
                suffixIcon: null, // Pass null explicitly
              ),
            ),
            const SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child:  FormFieldWidget(
                
                prefixIcon: Icons.email_outlined,
                hintText: "E-mail",
                fillColor: Colors.white60,
                filled: true,
                suffixIcon: null, controller: Controller.email, // Pass null explicitly
              ),
            ),
            const SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child:  FormFieldWidget(
                prefixIcon: Icons.phone,
                hintText: "Phone no.",
                fillColor: Colors.white60,
                filled: true,
                suffixIcon: null, controller: Controller.phoneNo, // Pass null explicitly
              ),
            ),
            const SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.085,
              child:  FormFieldWidget(
                prefixIcon: Icons.lock_outline_sharp,
                hintText: "Password",
                fillColor: Colors.white60,
                filled: true,
                suffixIcon: Icons.remove_red_eye, controller: Controller.password,
              ),
            ),
            const SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    SignupController.instance.registerUser(Controller.email.text.trim(), Controller.password.text.trim());
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                child: Text(
                  "Sign Up",
                  style: Styles.logintxt,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
