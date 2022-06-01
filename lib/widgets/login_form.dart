import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GradientBackground(),
        SingleChildScrollView(
          child: Column(
            children: [
              LogoContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,),
                child: Column(
                  children: [
                    const Text(
                      'FoodApp',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Your value proposition',
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 236, 85), fontSize: 15),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined,
                              color: Colors.white),
                          hintText: 'Email'),
                      //onChanged: ( value ) => loginForm.email = value,
                      validator: (value) {
                        String pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regExp = RegExp(pattern);

                        return regExp.hasMatch(value ?? '')
                            ? null
                            : 'Wrong mail format';
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autocorrect: false,
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Password'),
                      //onChanged: ( value ) => loginForm.password = value,
                      validator: (value) {
                        return (value != null && value.length >= 6)
                            ? null
                            : 'Password must have lenght 6';
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: 250,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            //TODO: FormProvider
                          },
                          child: const Text('LOGIN'),
                          style: TextButton.styleFrom(
                              primary: Color(0xFFFD6174),
                              backgroundColor: Colors.white,
                              elevation: 0,
                              shape: const StadiumBorder(),
                              textStyle: TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: const Text(
                            'Sign Up now',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 80, left: 50, right: 50, bottom: 20),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                color: Color.fromARGB(97, 255, 109, 87)),
          ),
        ),
        Transform.rotate(
          angle: -math.pi / 5,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.white,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: Container(
            width: 80,
            height: 80,
              decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/icon.png')),
          )),
        ),
      ]),
    );
  }
}

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
          Color(0xFFFF816F),
          Color(0xFFFE8575),
          Color(0xFFFD6174),
        ],
                stops: [
          0,
          0.5,
          1
        ])));
  }
}
