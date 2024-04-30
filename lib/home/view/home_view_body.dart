import 'package:flutter/material.dart';
import 'package:mybroject/login/login_view.dart';
import 'package:mybroject/widgets/custom_border_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 63, left: 8, right: 8, bottom: 25),
              child: Image(image: AssetImage('assets/images/bro.png')),
            ),
            const Text(
              'welcome to our pharmacy ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'login as',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 40, left: 32, right: 32, bottom: 25),
              child: CustomOutlineButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginView()));
                },
                text: 'User',
                textColor: Color(0xff29256E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
              ),
              child: CustomOutlineButton(
                onPressed: () {},
                text: 'Admin',
                textColor: Color(0xff29256E),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
