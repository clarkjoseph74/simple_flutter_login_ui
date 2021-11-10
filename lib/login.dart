// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.freepik.com/free-photo/tropical-green-leaves-background_53876-88891.jpg'),
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.multiply),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
            ),
            child: const Center(
              child: CustomText(
                text: 'Login',
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          customTextFormField(
            firstText: "Enter your Email : ",
            secondText: "E-mail",
            iconData: Icons.alternate_email_rounded,
          ),
          customTextFormField(
            firstText: "Enter your password : ",
            secondText: "******",
            iconData: Icons.visibility_off,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: CustomText(
                text: "Forget your password ? ",
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: CustomText(
              text: "Another methods",
              weight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 30,
                child: Icon(
                  FontAwesome.facebook,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 30,
                child: Icon(
                  FontAwesome.google_plus_circle,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget customTextFormField(
    {required String firstText, required secondText, required iconData}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: firstText,
          size: 25,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.lightGreen.shade300,
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  iconData,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                hintText: secondText,
                hintStyle: const TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;

  const CustomText(
      {Key? key,
      required this.text,
      this.size = 18,
      this.weight = FontWeight.normal,
      this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style:
          GoogleFonts.nunito(fontSize: size, color: color, fontWeight: weight),
    );
  }
}
