import 'package:flutter/material.dart';
import 'package:mybroject/constant/constant.dart';
import 'package:mybroject/constant/styles.dart';
import 'package:mybroject/reset_password/reset_password_view.dart';
import 'package:mybroject/widgets/custom_border_button.dart';
import 'package:mybroject/widgets/custom_text_feild.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 88,
        ),
        const Image(
          image: AssetImage('assets/images/fxemoji_lock.png'),
          width: 35,
          height: 39,
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 48),
          child: Text(
            'Forgot Password',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff455A64)),
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
        Padding(
          padding:
              const EdgeInsets.only(top: 64, left: 32, right: 32, bottom: 25),
          child: CustomOutlineButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ResetPasswordView()));
            },
            text: 'continue',
            color: kButtonColor,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
