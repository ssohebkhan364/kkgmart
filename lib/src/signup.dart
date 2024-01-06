import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whitecolor,
      body: SingleChildScrollView(
        child: Column(children: [
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
            "Create An Account.",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: const Icon(Icons.person),
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
                hintText: 'Name',
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
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
                hintText: 'Confirm Password',
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Forgot password"),
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
                  'Create Account',
                  style: TextStyle(color: AppColor.whitecolor, fontSize: 22),
                ),
                onPressed: () {},
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
                  color: Colors.grey,
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              Text("Log In  ", style: TextStyle(color: AppColor.redcolor))
            ],
          ),
        ]),
      ),
    );
  }
}
