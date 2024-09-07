import 'package:flutter/material.dart';
import 'package:login/otp_Screen.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => ForgotpassState();
}

class ForgotpassState extends State<Forgotpass> {
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
              // height: MediaQuery.of(context).size.height / 3,
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
                            "Forgot Password",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      //width: 300,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 20.0),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.phone),
                                SizedBox(width: 10.0),
                                Text("Phone Number:-")
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              maxLength: 10,
                              decoration: InputDecoration(
                                counterText: "",
                                hintText: "1234567890",
                                prefixIcon: const Icon(Icons.phone),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: const BorderSide(
                                    color: Colors
                                        .blue, // Change the border color here
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: ElevatedButton(
                                  style: ButtonStyle(backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.pressed)) {
                                        return Colors.blue;
                                      }
                                      return Colors
                                          .grey; // Use the component's default.
                                    },
                                  )),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const otpScreen()));
                                  },
                                  child: const Text("Send Code",
                                      style: TextStyle(color: Colors.white))),
                            ),
                            const Text(
                              "OR",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Set the border color
                                    width: 2.0,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail,
                                        color: Colors.black,
                                      ),
                                      Text(" send code on Gmail",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ))
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
