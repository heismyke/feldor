import 'package:feldor/screens/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    bool smallScreen = screenHeight < 800;

    return MaterialApp(
      title: 'Sign Up Screen',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(250, 78, 24, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  // color: Colors.blue,
                  width: screenWidth,
                  height:
                      smallScreen ? screenHeight * 0.33 : screenHeight * 0.3,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( left: 20, top: 80),
                        child:  GestureDetector(
                          onTap:  () => {
                             Navigator.pop(
                              context, MaterialPageRoute(builder: (context) => LoginScreen()) 
                              
                              )
                          },
                          child: Container(
                          width: 34,
                          height: 34,
                          
                          decoration: const BoxDecoration(
                            color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20
                          ),
                        ),
                        )
                      ),
                      Padding(
                        padding: smallScreen ? const EdgeInsets.only(top: 30, left: 20) :  const EdgeInsets.only(top: 50, left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                             Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),

                            ),
                            //  SizedBox(
                            //   height: 10,
                            // ),
                             Text(
                              'Please enter your details to sign up',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),

                            )
                          ],
                        ),
                      )
                       
                    ],
                  ),
                ),
              ),
              Container(
                height: smallScreen ? screenHeight * 0.9 : screenHeight * 0.7,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: smallScreen ? 20 : 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextFormField(
                          onTap: () {},
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'forgot password',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //    MaterialPageRoute(
                            //     builder: (context) =>

                            //     )

                            //    );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xfffFB3131)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            "SIGN IN",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: smallScreen ? 80 : 90,
                            height: screenHeight * 0.001,
                            color: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text('or Sign up with'),
                          ),
                          Container(
                            width: smallScreen ? 80 : 90,
                            height: screenHeight * 0.001,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Login with Apple",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:
                                    BorderSide(color: Colors.black, width: 0.5),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Login with Google",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
