import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/constaints/styles_colors.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            onPressed:
                  ()=> Get.back(),

            icon: const Icon(Icons.arrow_back),
          ),
          title: Text("Payment Methods"),
          flexibleSpace: Container(
            // Add a flexibleSpace to set the gradient background
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFFfc8a28), Color(0xFFc55c00)],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/adding-credit-card-icon-.png',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("No card saved", style: Styles.headLineStyle2),
                  SizedBox(height: 10),
                  Text("There are no payment Methods", style: Styles.headLineStyle10,)

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.85,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("ADD CARD"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
