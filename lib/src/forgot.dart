import 'package:flutter/material.dart';
import 'package:kkgmart/Utils/appColors.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _LoginState();
}

class _LoginState extends State<Forgot> {
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
          "Forgot Password",
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
                'Submit',
                style: TextStyle(color:AppColor.whitecolor, fontSize: 22),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}
