import 'package:flutter/material.dart';

import 'login.dart';

class SignupWidget extends StatelessWidget {
  static const String signupRoute = '/signup';
  const SignupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffFC2A2A),
              Color(0xffFAAB4F),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: statusBarHeight, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/Stethoscope.png'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginWidget.loginRoute);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Find the best doctors nearest to you',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Image(
                  height: MediaQuery.of(context).size.height * 0.2,
                  image: AssetImage('assets/doctorloginimg.png')),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            'Create your account',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Divider(
                            color: Colors.black,
                            height: 20,
                            thickness: 2,
                            // These params are used to shrink that divider based on screenWidth
                            indent: MediaQuery.of(context).size.width * 0.2,
                            endIndent: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),

                        // Align widget for positioning the labels to left most side of screen
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Username',
                          ),
                        ),
                        TextContainer(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter Mobile Number',
                          ),
                        ),
                        TextContainer(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                prefixIcon: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 9.5, horizontal: 10),
                                    child: Text(
                                      '+91 |',
                                      style: TextStyle(fontSize: 18),
                                    )),
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),

                        // Align widget for positioning the labels to left most side of screen
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Create Password',
                          ),
                        ),
                        TextContainer(
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.visibility),
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                        // Use [MediaQuery] for [SizedBox] to make more responsive UI
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Color(0xffFC2A2A),
                                Color(0xffFAAB4F),
                              ])),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                child: Text(
                                  'Create',
                                  style: TextStyle(fontSize: 20),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
