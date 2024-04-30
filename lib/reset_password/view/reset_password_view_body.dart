import 'package:flutter/material.dart';
import 'package:mybroject/constant/constant.dart';
import 'package:mybroject/constant/styles.dart';
import 'package:mybroject/reset_password/reset_password_view.dart';
import 'package:mybroject/widgets/custom_border_button.dart';
import 'package:mybroject/widgets/custom_text_feild.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 79, bottom: 64),
              child: Text(
                'Reset Password',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              child: Padding(
                padding: EdgeInsets.only(left: 18, bottom: 4),
                child: Text(
                  'New password',
                  style: Styles.textStyles,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            const CustomTextFeild(
              hintText: 'New password',
            ),
            const SizedBox(
              height: 17,
            ),
            const Align(
              child: Padding(
                padding: EdgeInsets.only(left: 18, bottom: 4),
                child: Text(
                  'confirm New password',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff455A64)),
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            const CustomTextFeild(
              hintText: 'confirm New password',
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 64, left: 32, right: 32, bottom: 25),
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
        ),
      ],
    );
  }
}
