import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/First_screen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var nameFocusNode = FocusNode();
  var emailFocusNode = FocusNode();
  var passwordFocusNode = FocusNode();
  var isPasswordShowing = true;
  checkValidations() {
    if (namecontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter Name");
    } else if (emailcontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter email");
    } else if (passwordcontroller.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter password");
    } else {
      Fluttertoast.showToast(msg: "all are registered");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.width / 2,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80))),
              )),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 10, top: 20),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      //width: 300,
                      margin:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 20.0),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(
                                  controller: namecontroller,
                                  focusNode: nameFocusNode,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Enter Name",
                                    prefixIcon: const Icon(Icons.person),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      borderSide: const BorderSide(
                                        color: Colors
                                            .blue, // Change the border color here
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  onSubmitted: (value) {
                                    if (namecontroller.text
                                        .toString()
                                        .isEmpty) {
                                      Fluttertoast.showToast(msg: "Enter Name");
                                    } else {
                                      emailFocusNode.requestFocus();
                                    }
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(
                                  controller: emailcontroller,
                                  focusNode: emailFocusNode,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Enter email",
                                    prefixIcon: const Icon(Icons.mail),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      borderSide: const BorderSide(
                                        color: Colors
                                            .blue, // Change the border color here
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  onSubmitted: (value) {
                                    if (emailcontroller.text
                                        .toString()
                                        .isEmpty) {
                                      Fluttertoast.showToast(
                                          msg: "Enter Email");
                                    } else {
                                      passwordFocusNode.requestFocus();
                                    }
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  prefixIcon: const Icon(Icons.key),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: const BorderSide(
                                      color: Colors
                                          .blue, // Change the border color here
                                    ),
                                  ),
                                  counterText: "",
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.pressed)) {
                                          return Colors.grey;
                                        }
                                        return Colors
                                            .blue; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    checkValidations();
                                    print(emailcontroller.text);
                                  },
                                  child: const Text("Sign Up",
                                      style: TextStyle(color: Colors.white))),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  height: 1,
                                  color: Colors.black,
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Or Continue With"),
                                ),
                                Expanded(
                                    child: Container(
                                  height: 1,
                                  color: Colors.black,
                                ))
                              ],
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Set the border color
                                    width: 2.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("images/google.png",
                                          height: 20.0, width: 20.0),
                                      const Text(
                                        " Sign Up With Google",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Set the border color
                                    width: 2.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("images/facebook.png",
                                          height: 24.0, width: 24.0),
                                      const Text(
                                        " Sign Up With Facebook",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Set the border color
                                    width: 2.0,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("images/apple.png",
                                          height: 24.0, width: 24.0),
                                      const Text(
                                        " Sign Up With Apple",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.050,
              left: 0,
              right: 0,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Already Have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Firstscreen()),
                          );
                        },
                        child: const Text(
                          "Login in",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ))),
        ],
      ),
    );
  }
}
