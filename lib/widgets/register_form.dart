import 'package:flutter/material.dart';
import 'package:login_2/widgets/login_form.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientBackground(),
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: LogoContainer(),
            ),
            Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 50, left: 50, bottom: 50),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ],
              ),
        
              Divider(
                color: Colors.white,
              ),
        
              SizedBox(height: 50,),
              
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.person_outline_outlined, color: Colors.white),
                    hintText: 'Your Name'),
                //onChanged: ( value ) => loginForm.email = value,
                //validator: (value) {
                //  String pattern =
                //      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                //  RegExp regExp = RegExp(pattern);
        //
                //  return regExp.hasMatch(value ?? '')
                //      ? null
                //      : 'Wrong mail format';
                //},
              ),
        
              SizedBox(height: 20,),
        
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.person_outline_outlined, color: Colors.white),
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
        
              SizedBox(height: 20,),
        
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
        
              SizedBox(height: 20,),
        
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
                            hintText: 'Repeat Password'),
                        //onChanged: ( value ) => loginForm.password = value,
                        validator: (value) {
                          return (value != null && value.length >= 6)
                              ? null
                              : 'Password must have lenght 6';
                        },
                      ),
                      const SizedBox(height: 10,),       
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: 250,
                          height: 60,
                          child: TextButton(
                            onPressed: () {
                              //TODO: FormProvider
                            },
                            child: const Text('SIGN UP'),
                            style: TextButton.styleFrom(
                                primary: Color(0xFFFD6174),
                                backgroundColor: Colors.white,
                                elevation: 0,
                                shape: const StadiumBorder(),
                                textStyle: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.w800),
                            ),
                          )
                        ],
                      ),
            ]))
          ],
        ),
      ),
    ]);
  }
}
