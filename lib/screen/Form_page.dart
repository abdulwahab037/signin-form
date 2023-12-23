import 'package:flutter/material.dart';
import 'package:signin/screen/CreateNew_Account.dart';
import 'package:signin/screen/Forget_Password.dart';
import 'package:signin/screen/data_page.dart';

class FormPage extends StatelessWidget {
  TextEditingController emailCom = TextEditingController();
  TextEditingController passwordCom = TextEditingController();
  final formkey = GlobalKey<FormState>();

  FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
            key: formkey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextFormField(
                validator: (txt) {
                  if (txt == null || txt.isEmpty)
                    return 'Requried';
                  else if (txt.contains('@gmail.com') == false)
                    return 'Not a valid Email';
                  else
                    return null;
                },
                controller: emailCom,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Requried';
                },
                controller: passwordCom,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 15,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: Text('Forget Password?'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => _login(context), child: const Text('login')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewAccount()));
                },
                child: Text('Create New Account'),
              )
            ])),
      ),
    );
  }

  void _login(BuildContext context) {
    String email = emailCom.text;
    String password = passwordCom.text;
    if (formkey.currentState?.validate() == false) return;
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => DataPage(email, password)),
    );
  }
}
