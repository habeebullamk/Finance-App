import 'package:finance_app_provider/widgets/appbutton.dart';
import 'package:finance_app_provider/widgets/apptext.dart';
import 'package:finance_app_provider/widgets/customtextfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontoller = TextEditingController();

  final loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Form(
            key: loginKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return"Enter Email";
                    }
                  },
                    controller: emailcontroller, hintText: "Email"),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return"Enter Password";
                    }
                    if(value.length<6){
                      return"Password Should grater than 6 letters";
                    }
                    return null;
                  },
                    obscureText: true,
                    controller: passwordcontoller,
                    hintText: "Password"),
                SizedBox(height: 20),
                Appbutton(
                    height: 48,
                    width: 250,
                    color: Colors.deepOrange,
                    ontap: () {
                      if(loginKey.currentState!.validate()){

                      }
                    },
                    child: Apptext(
                      data: "login",
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 240,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Apptext(data: "Don't have an account",color: Colors.white,),
                    SizedBox(width: 10),
                    InkWell(onTap: () {
                      Navigator.pushNamed(context, 'register');
                    },
                      child: Apptext(data: "Register",color: Colors.white)),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
