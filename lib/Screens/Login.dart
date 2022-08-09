import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var email = TextEditingController();
  var pass = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

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
          top: 20,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Stack(
          children: [
            Column(
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
                const SizedBox(
                  height: 30,
                ),
                /*email*/ SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.2, color: Colors.black),),
                      hintText: 'Email or Phone number',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /*password*/ SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    controller: pass,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.2, color: Colors.black),),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: const Text('Forgot password?',
                          style: TextStyle(color: Colors.black),),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                /*login*/ Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),),
                    color: Colors.black,
                    onPressed: () {
                      print(email.text);
                      print(pass.text);
                    },
                    child: const Text(
                      'Log in',
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
              padding: const EdgeInsets.only(top: 400.0),
              child: Column(
                children: [
                  const Text('Or Log in using social media'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        elevation: 0,
                        highlightColor: const Color.fromARGB(255, 240, 199, 60),
                        hoverColor: const Color.fromARGB(255, 240, 199, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),),
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
                            borderRadius: BorderRadius.circular(30),),
                        color: const Color.fromARGB(255, 240, 199, 60),
                        onPressed: () {},
                        child: const Image(
                          image: AssetImage('assets/Instagram.png'),
                          width: 35,
                        ),
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
                          image: AssetImage('assets/Google.png'),
                          width: 35,
                        ),
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
