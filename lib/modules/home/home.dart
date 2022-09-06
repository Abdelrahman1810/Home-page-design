import 'package:flutter/material.dart';
import 'package:home_page_design/modules/login/login.dart';
import 'package:home_page_design/modules/signup/Signup.dart';
import 'package:home_page_design/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/present.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Pr',
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'e',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'sent',
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Let\'s make happiness',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              commonButton(
                text: 'Log In',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                color: Colors.amber,
                textcolor: Colors.black,
                fontsize: 40.0,
                border: 3.0,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              commonButton(
                text: 'Sign Up',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                fontsize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
