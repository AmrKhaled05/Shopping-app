import 'package:ShoppingProject/HomePage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ShoppingProject/HomePage.dart';
import 'package:ShoppingProject/WelcomePage3.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool passwordIndicator=true;
  bool passwordConfirmationIndicator=true;
  final  _formKey = GlobalKey<FormState>();
  final  _passwordController=TextEditingController();
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Welcomepage3(),
              ),
            );
          }, icon: Icon(Icons.arrow_back)),
          title: Text(tr("sign_up_message"),style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return tr("Full_name_warning_message");
                          }
                          if(value[0] == value[0].toLowerCase() && value[0].contains(RegExp(r'[a-z]'))){
                          return tr("First_letter_warning_message");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: tr("Full_name"),
                            hintText: tr("Full_name_message")),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return tr("Email_warning_message");
                          }
                          if (!value.contains('@')) {
                            return tr("missing_Email_warning_message");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: tr('Email'),
                            hintText: tr('Email_message')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return tr("Password_warning_message");
                          }
                          if (value.length<6) {
                            return tr("Password_length_warning_message");
                          }
                          return null;
                        },
                        obscureText: passwordIndicator,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: tr("password"),
                            hintText: tr("password_message"),
                            suffixIcon: IconButton(onPressed: (){
                              changePasswordIndicator();
                            }, icon: Icon(passwordIndicator?Icons.visibility:Icons.visibility_off))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        obscureText: passwordConfirmationIndicator,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return tr("Confirm_Password_warning_message");
                          }
                          if (value !=_passwordController.text) {
                            return tr("Confirm_Password_matching_warning_message");
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: tr("Confirm_Password"),
                            hintText: tr("Confirm_Password_message"),
                            suffixIcon: IconButton(onPressed: (){
                              changePasswordConfirmationIndicator();
                            }, icon: Icon(passwordConfirmationIndicator?Icons.visibility:Icons.visibility_off))),
                      ),
                    ),

                    SizedBox(
                      height: 65,
                      width: 360,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                              child: Text( tr("sign_up_message"), style: TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(tr("Congratulations_message")),
                                      content: Text(tr("account_signup_successfully_message")),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            setState(() {
                                              _visible = false;
                                            });
                                            Future.delayed(const Duration(milliseconds: 200), () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const Shopping(),
                                                ),
                                              );
                                            });
                                          },
                                          child: Text(tr("Close_message")),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                        ),
                      ),
                    ),
                    )]),
            ),
          ),
        ));
  }
  changePasswordIndicator(){
    passwordIndicator=!passwordIndicator;
    setState(() {
    });
  }
  changePasswordConfirmationIndicator(){
    passwordConfirmationIndicator=!passwordConfirmationIndicator;
    setState(() {
    });
  }
}
