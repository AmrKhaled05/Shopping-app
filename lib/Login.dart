import 'package:ShoppingProject/WelcomePage3.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ShoppingProject/HomePage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final  _formKey = GlobalKey<FormState>();
  bool passwordIndicator=true;
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
        title:Text(tr("log_in_title_message"),style:TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
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
                      hintText:tr("Email_message")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return tr('Password_warning_message');
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
                      }, icon: Icon(passwordIndicator?Icons.visibility:Icons.visibility_off))),
                ),
              ),

              SizedBox(
                height: 65,
                width: 360,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      child: Text( tr("log_in_message"), style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: Text(tr("Congratulations_message")),
                                    content:  Text(
                                        tr("account_login_successfully_message")),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (context) => const HomePage(),
                                            ),
                                          );
                                        },
                                        child:  Text(tr("Close_message")),
                                      ),
                                    ]);
                              });
                        }
                      }),
                ),
              ),
          ),
        ]),
        ),
      ));
  }
  changePasswordIndicator() {
    setState(() {
      passwordIndicator=!passwordIndicator;
    });
  }
}


