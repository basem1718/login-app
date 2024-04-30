import 'package:flutter/material.dart';
import 'package:mybroject/constant/constant.dart';
import 'package:mybroject/constant/styles.dart';
import 'package:mybroject/forget_password/forget_password_view.dart';
import 'package:mybroject/widgets/custom_border_button.dart';
import 'package:mybroject/widgets/custom_text_feild.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const Padding(
              padding: const EdgeInsets.only(top: 81, bottom: 58),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 36),
              ),
            ),
            const Align(
              child: Padding(
                padding: EdgeInsets.only(left: 18, bottom: 4),
                child: Text(
                  'email',
                  style: Styles.textStyles,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            const CustomTextFeild(
              hintText: 'email',
            ),
            const SizedBox(
              height: 17,
            ),
            const Align(
              child: Padding(
                padding: EdgeInsets.only(left: 18, bottom: 4),
                child: Text(
                  'password',
                  style: Styles.textStyles,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            const CustomTextFeild(
              hintText: 'password',
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.only(right: 18, top: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgetPasswordView();
                    }));
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xff455A64)),
                  ),
                ),
              ),
              alignment: Alignment.centerRight,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 32, right: 32, bottom: 25),
              child: CustomOutlineButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => const LoginView()));
                },
                text: 'Signin',
                color: Color(0xff45A2CF),
                textColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an account? ',
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Signup',
                    style: TextStyle(fontSize: 16, color: kButtonColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
