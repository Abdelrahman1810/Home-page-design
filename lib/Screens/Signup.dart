import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  var name = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 199, 60),
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
        backgroundColor: const Color.fromARGB(255, 240, 199, 60),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 20,
          right: 20,
          left: 20,
        ),
        child: Stack(
          children: [
            Column(
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
                /*name*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: name,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Full Name',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                /*email*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Email Address',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                /*phone*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Phone Number',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                /*password*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  child: TextFormField(
                    controller: pass,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintMaxLines: 2,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.black),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                /*sign up*/ Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      print(name.text);
                      print(email.text);
                      print(phone.text);
                      print(pass.text);
                    },
                    child: const Text(
                      'Create',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 240, 199, 60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460.0),
              child: Column(
                children: [
                  const Text('Or create an account using social media'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        elevation: 0,
                        highlightColor: const Color.fromARGB(255, 240, 199, 60),
                        hoverColor: const Color.fromARGB(255, 240, 199, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: const Color.fromARGB(255, 240, 199, 60),
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('assets/facebook.jpg'),
                            width: 30),
                      ),
                      MaterialButton(
                        elevation: 0,
                        highlightColor: const Color.fromARGB(255, 240, 199, 60),
                        hoverColor: const Color.fromARGB(255, 240, 199, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: const Color.fromARGB(255, 240, 199, 60),
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('assets/Instagram.png'),
                            width: 35),
                      ),
                      MaterialButton(
                        elevation: 0,
                        highlightColor: const Color.fromARGB(255, 240, 199, 60),
                        hoverColor: const Color.fromARGB(255, 240, 199, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: const Color.fromARGB(255, 240, 199, 60),
                        onPressed: () {},
                        child: const Image(
                            image: AssetImage('assets/Google.png'), width: 35),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
