import 'package:flutter/material.dart';
import 'package:home_page_design/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();

  var test = TextEditingController();

  String password = '';
  var pass = TextEditingController();
  bool isPasswordVisible = true;

  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    email.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Pr',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'e',
              style: TextStyle(
                fontSize: 50.0,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'sent',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Column(
                children: const [
                  Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 55.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              /*email*/ textField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                hinttext: 'Email or Phone number',
                suffixIcon: email.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(Icons.close, size: 20.0, color: Colors.black),
                        onPressed: () => email.clear(),
                      ),
              ),
              const SizedBox(height: 10),
              /*password*/ textField(
                keyboardType: TextInputType.emailAddress,
                controller: pass,
                hinttext: 'Email or Phone number',
                isPassword: true,
                suffixIcon: pass.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility_off, size: 20.0, color: Colors.black)
                            : const Icon(Icons.visibility, size: 20.0, color: Colors.black),
                        onPressed: () => setState(
                          () => isPasswordVisible = !isPasswordVisible,
                        ),
                      ),
                onChange: (value) => setState(() => password = value),
                isPasswordVisible: isPasswordVisible,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              /*login*/ commonButton(
                text: 'Log In',
                function: () => {if (formKey.currentState!.validate()) {}},
                fontsize: 25.0,
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Text('Or Log in using social media'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      iconSocialmedia(
                        url:
                            'https://www.freepnglogos.com/uploads/google-plus-png-logo/plus-original-google-solid-google-world-brand-png-logo-21.png',
                      ),
                      iconSocialmedia(
                        url:
                            'https://icon-library.com/images/facebook-icon-black/facebook-icon-black-12.jpg',
                      ),
                      iconSocialmedia(
                        url: 'https://cdn-icons-png.flaticon.com/512/6422/6422210.png',
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
