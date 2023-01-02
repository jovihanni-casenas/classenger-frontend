import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget{
  LoginSignupScreen({required this.title, super.key});

  String title;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override 
  Widget build(BuildContext context){

    double textFieldWidth = MediaQuery.of(context).size.width * 0.5;

    // text fields
    List<Widget> textFields = [
      // text field for email
      SizedBox(
        width: textFieldWidth,
        child: TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: 'E-mail',
            icon: Icon(Icons.email),
          ),
        ),
      ),
      const SizedBox(height: 10,),
      // text field for password
      SizedBox(
        width: textFieldWidth,
        child: TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: 'Password',
            icon: Icon(Icons.password),
          ),
        ),
      ),
      const SizedBox(height: 50,),
      // submit button
      FloatingActionButton(
        onPressed: () {
          // temporary print on pressed
          print('submit button pressed');
        },
        child: const Icon(Icons.check),
      ),
    ];


    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            height: AppBar().preferredSize.height,
            padding: const EdgeInsets.all(5.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'logo.png',
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 10,),
                Text(title),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // sign up tab
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: textFields,
            ),
            // log in tab
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: textFields,
            ),
          ],
        ),
        bottomNavigationBar: const TabBar(
            tabs: [
              Tab(text: 'Sign up',),
              Tab(text: 'Log in',),
            ],
            // indicatorColor: Color(0xff4e5c72),
            labelColor: Color(0xff4e5c72),
            // overlayColor: MaterialStatePropertyAll(Color(0xff4e5c72)),
            onTap: null,
          ),
      ),
    );
  }
}

