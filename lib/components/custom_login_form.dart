import 'package:flutter/material.dart';
import 'package:login_join/components/custom_text_form_field.dart';
import 'package:login_join/size.dart';
import 'package:login_join/user_repository.dart';
import 'package:login_join/validator_util.dart';

class CustomLoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();
  CustomLoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: large_gap),
            CustomTextFormField(
              validate: validateEmail(),
              textController: _email,
              text: "Email",
            ),
            SizedBox(height: mlarge_gap),
            CustomTextFormField(
              validate: validatePassword(),
              textController: _password,
              isPassword: true,
              text: "Password",
            ),
            SizedBox(height: large_gap),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: mlarge_gap),
            TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    UserRepository repo = UserRepository();
                    repo.login(_email.text.trim(), _password.text.trim());
                    Navigator.pushNamed(context, "/login");
                  }
                },
                child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
