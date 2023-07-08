import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/constaints/styles_colors.dart';
import '../../../utils/constaints/texts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                jOtpTitle,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 70),
              ),
              Text(
                jOtpSubTitle.toUpperCase(),
                // style: Theme.of(context.textTheme.headline6),
                style: Styles.headLineStyle3,
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                "$jOtpMessage tashrifalive@gmail.com",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){print("Otp is => $code");},
              ),
              SizedBox(height: 30,),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  height: MediaQuery.of(context).size.height * 0.060,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    child: Text("Continue"),),),
            ],
          ),
        ),
      ),
    );
  }
}
