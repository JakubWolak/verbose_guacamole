import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/loginimg.png"
                ),
                fit: BoxFit.cover,
              )
            )
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  )
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[500]
                  )
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    )
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0,
                              )
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                      )
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[500]
                      )
                    )
                  ],
                )
              ]
            )
          ),
          const SizedBox(height: 40),
          Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.04),
                  image: const DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover,
                  )
              ),
            child: const Center(
              child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),
            ),
          ),
          SizedBox(height: h * 0.08),
          RichText(
              text: TextSpan(
              text: 'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20
                ),
                children: const [
                  TextSpan(
                  text: 'Create',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ]
            )
          )
        ],
      )
    );
  }
}
