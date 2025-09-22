import 'package:country_flags/country_flags.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:ShoppingProject/WelcomePage3.dart';
import "package:country_icons/country_icons.dart";
import 'package:flutter/material.dart';
class Welcomepage2 extends StatefulWidget {
  const Welcomepage2({super.key});

  @override
  State<Welcomepage2> createState() => _Welcomepage2State();
}

class _Welcomepage2State extends State<Welcomepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Text("Choose the language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("Select your preferred language below",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 20,),
                  Text("اختر اللغة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("اختر اللغة المفضلة لديك أدناه",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 40,),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    leading: ClipOval(
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child:  CountryIcons.getSvgFlag('us'),
                      ),
                    ),
                    title: Text('English',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    trailing: Icon(Icons.arrow_forward_ios),
                    tileColor: Colors.grey[300],
                    onTap: () {
                      context.setLocale(Locale('en', 'US'));
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) =>  Welcomepage3(),
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 20,
                    thickness: 0,
                  ),
                  ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                    leading: ClipOval(
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: CountryFlag.fromCountryCode('ae'),
                      ),
                    ),
                    title: Text('العربية',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    trailing: Icon(Icons.arrow_forward_ios),
                    tileColor: Colors.grey[300],
                    onTap: (){
                      context.setLocale(Locale('ar', 'EG'));
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) =>  Welcomepage3(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
