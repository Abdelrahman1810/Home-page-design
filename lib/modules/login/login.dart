import 'package:flutter/material.dart';
import 'package:home_page_design/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();

  String password = '';
  final pass = TextEditingController();
  bool isPasswordVisible = true;

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
            ),
            const SizedBox(
              height: 10,
            ),
            /*password*/ buildPassword(),
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
              function: () {
                print(email.text);
                print(password);

                email.clear();
                pass.clear();
              },
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
                      url: 'assets/Google.png',
                    ),
                    iconSocialmedia(
                      url: 'assets/facebook.jpg',
                    ),
                    iconSocialmedia(
                      url: 'assets/twitter-1464537-1239448.webp',
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPassword() => SizedBox(
        width: double.infinity,
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          controller: pass,
          onChanged: (value) => setState(() => password = value),
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: const TextStyle(color: Colors.black),
            // errorText: password.length < 6 ? 'Password too short.' : null,
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? const Icon(Icons.visibility_off,
                      size: 20.0, color: Colors.black)
                  : const Icon(Icons.visibility,
                      size: 20.0, color: Colors.black),
              onPressed: () => setState(
                () => isPasswordVisible = !isPasswordVisible,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.black),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3.0),
            ),
          ),
          textInputAction: TextInputAction.done,
          obscureText: isPasswordVisible,
        ),
      );
}
