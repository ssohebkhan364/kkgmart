import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';
import 'package:kkgmart/src/forgot.dart';
import 'package:kkgmart/src/home.dart';
import 'package:kkgmart/src/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whitecolor,
      body: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          "images/assets/logo.png",
          height: 50,
          width: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
            child: Text(
          "Login to Your account",
          style: TextStyle(
              color: AppColor.blackcolor, fontSize: 20, fontWeight: FontWeight.bold),
        )),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: const Icon(Icons.email),
              fillColor: AppColor.whitecolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Email Address',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: const Icon(Icons.lock),
              fillColor: AppColor.whitecolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: 'Password',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Forgot()));
                  },
                  child: const Text("Forgot password")),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.redcolor),
              child: const Text(
                'Login',
                style: TextStyle(color:AppColor.redcolor, fontSize: 22),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: AppColor.graycolor,
                width: 100,
                height: 5,
              ),
            ),
            const Text("Or Connect With"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: AppColor.graycolor,
                width: 100,
                height: 5,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                "images/assets/google.png",
                height: 40,
                width: 40,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                "images/assets/facebook.png",
                height: 40,
                width: 40,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                "images/assets/apple.png",
                height: 40,
                width: 40,
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Create an account "),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: const Text("Sign up ",
                    style: TextStyle(color: AppColor.redcolor)))
          ],
        ),
      ]),
    );
  }
}
