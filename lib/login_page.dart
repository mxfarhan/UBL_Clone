import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';
import 'package:logins/home.dart';
import 'package:logins/sign_up.dart';
import 'package:logins/splash_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/images/splas.jpg'),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.20),
                  Colors.black.withOpacity(0.5)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Align(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            //fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white38,
                          filled: true,
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            //fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white38,
                          filled: true,
                          hintText: 'Enter Password',
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, top: 8, right: 19),
                    child: Row(
                      children: [
                        const AnimatedSwitch(
                          colorOff: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: (){},
                          child: const Text(
                            'Forget Password',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {

                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          '----------------------------',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                            onPressed:() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            )),
                        const Text(
                          '----------------------------',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
