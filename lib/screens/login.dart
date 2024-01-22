import 'package:flutter/material.dart';
import 'package:skenu/screens/Register.dart';
import 'package:skenu/screens/home.dart';

import 'Register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/home.png"),
            fit: BoxFit.cover
          )
        ),
        child:Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff8ce58),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    //make color or elevated button transparent
                  ),
                  onPressed: () {
                    _showLoginPopup();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text("LOG IN WITH EMAIL",style: TextStyle(color:Color(0xff011D45)),),
                  )),
            ),
            SizedBox(height: 20,),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff011D45),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    //make color or elevated button transparent
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Register()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text("REGISTER",style: const TextStyle(color: Colors.white),),
                  )),
            ),
            SizedBox(height: 40,)
          ],
        )
      ),
    );
  }
  Future<void> _showLoginPopup() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sign in to Your Account'),
          content: const SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  // controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                SizedBox(height: 16),
                TextField(
                  // controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login logic with _emailController.text and _passwordController.text
                // For example, you can check credentials and navigate to the next screen
                // For simplicity, I'm just printing the entered values here
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Home()));
              },
              child: Text('Login'),
            ),
          ],
        );
      },
    );
  }
}
