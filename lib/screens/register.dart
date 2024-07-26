import 'package:finance_app_provider/services/auth_service.dart';
import 'package:finance_app_provider/widgets/apptext.dart';
import 'package:finance_app_provider/widgets/customtextfiled.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontoller = TextEditingController();
  TextEditingController namecontoller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  final regKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final AuthService=Provider.of(context)
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Form(
            key: regKey,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Apptext(
                        data: "Create an Account",
                        color: Colors.white,
                        size: 22,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                          controller: emailcontroller, hintText: "Email"),
                          CustomTextFormField(controller: passwordcontoller, hintText: "password"),
                          CustomTextFormField(controller: namecontoller, hintText: "Name"),
                          CustomTextFormField(controller: phonecontroller, hintText: "Phone number")
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
