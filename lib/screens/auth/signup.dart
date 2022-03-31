import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/widgets/checkbox.dart';
import 'package:ltp/widgets/custom_input.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/main_icon.png',
                  color: kMainColor,
                  scale: 3.5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: 'Create an Account'
                      .text
                      .minFontSize(24)
                      .fontWeight(FontWeight.w600)
                      .maxFontSize(26)
                      .make(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: 'Sign Up now to get started with your account'
                      .text
                      .minFontSize(18)
                      .make(),
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kMainColor,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/search.png',
                          scale: 20,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        'Sign Up with Google'.text.minFontSize(18).make()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.black54,
                          //thickness: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5),
                        child: 'OR'.text.make(),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.black54,
                          //thickness: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInput(
                  title: 'Full Name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInput(
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInput(
                  title: 'Password',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInput(
                  title: 'Confim Password*',
                  isPassword: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CheckBoxx(),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: [
                              'I have agreed to'
                                  .text
                                  .fontWeight(FontWeight.w600)
                                  .make(),
                              ' Terms of Services'
                                  .text
                                  .color(
                                    const Color.fromARGB(255, 4, 25, 219),
                                  )
                                  .fontWeight(FontWeight.w600)
                                  .make(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed('/wrapper');
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: 'Get Started'
                          .text
                          .minFontSize(18)
                          .fontWeight(FontWeight.w600)
                          .make(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'Already have an account?'.text.minFontSize(16).make(),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: (() => Get.back()),
                        child: 'Sign In'
                            .text
                            .fontWeight(FontWeight.w500)
                            .minFontSize(16)
                            .color(
                              const Color.fromARGB(255, 8, 12, 236),
                            )
                            .make(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
