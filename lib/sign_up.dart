import 'package:flutter/material.dart';
import 'package:logins/login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
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
                            labelText: 'Enter Your Name',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              //fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            fillColor: Colors.white38,
                            filled: true,
                            hintText: 'Enter Name',
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
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              //fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            fillColor: Colors.white38,
                            filled: true,
                            hintText: 'Re-enter Password',
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintStyle: TextStyle(color: Colors.white54)),
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
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
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
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '----------------------------',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Continue With',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '----------------------------',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Icon(Icons.facebook,color: Colors.blue,size: 40,),
                          ),
                          SizedBox(width: 20,),
                          ClipOval(
                            child: Icon(Icons.ac_unit,color: Colors.white,size: 40,),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Already have account :',style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,)),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                          }, child: const Text('Login', style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),)),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
