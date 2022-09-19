import 'package:flutter/material.dart';
import 'package:home_page_design/shared/components/components.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final name = TextEditingController();

  final email = TextEditingController();

  final phone = TextEditingController();

  final pass = TextEditingController();
  String password = '';
  bool isPasswordVisible = true;

  var formKey = GlobalKey<FormState>();
  String errorText = 'Can\'ot be empty';

  @override
  void initState() {
    super.initState();

    name.addListener(() => setState(() {}));
    email.addListener(() => setState(() {}));
    phone.addListener(() => setState(() {}));
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
          top: 10,
          bottom: 20,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              /*name*/ textField(
                controller: name,
                hinttext: 'Name',
                keyboardType: TextInputType.name,
                suffixIcon: name.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(Icons.close, size: 20.0, color: Colors.black),
                        onPressed: () => name.clear(),
                      ),
              ),
              const SizedBox(height: 15),
              /*email*/ textField(
                controller: email,
                hinttext: 'Email',
                keyboardType: TextInputType.emailAddress,
                suffixIcon: email.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(Icons.close, size: 20.0, color: Colors.black),
                        onPressed: () => email.clear(),
                      ),
              ),
              const SizedBox(height: 15),
              /*phone*/ textField(
                controller: phone,
                hinttext: 'phone number',
                keyboardType: TextInputType.phone,
                suffixIcon: phone.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        icon: const Icon(Icons.close, size: 20.0, color: Colors.black),
                        onPressed: () => phone.clear(),
                      ),
              ),
              const SizedBox(height: 15),
              /*password*/ textField(
                keyboardType: TextInputType.emailAddress,
                controller: pass,
                hinttext: 'Password',
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
              const SizedBox(height: 25),
              /*sign up*/ commonButton(
                text: 'Create',
                function: () => {if (formKey.currentState!.validate()) {}},
                fontsize: 25.0,
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Text('Or create an account using social media'),
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
                        size: 30.0,
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
