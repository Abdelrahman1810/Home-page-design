import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page_design/shared/components/components.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

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
            ),
            const SizedBox(height: 15),
            /*email*/ textField(
              controller: email,
              hinttext: 'email address',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 15),
            /*phone*/ textField(
              controller: phone,
              hinttext: 'phone number',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 15),
            /*password*/ buildPassword(),
            const SizedBox(height: 25),
            /*sign up*/ commonButton(
              text: 'Create',
              function: () {
                print(name.text);
                print(email.text);
                print(phone.text);
                print(pass.text);

                name.clear();
                email.clear();
                phone.clear();
                pass.clear();
              },
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
