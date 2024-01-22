import 'package:flutter/material.dart';
import 'package:skenu/screens/home.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool checkedValue=true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register With Skenu"),
        centerTitle: true,
        backgroundColor: const Color(0xfff8ce58),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(5) ,bottomRight:Radius.circular(5))),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff011D45),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff001533),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .white, // Change the color to the desired color
                    ),
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  contentPadding: EdgeInsets.only(left: 10, top: 10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff001533),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .white, // Change the color to the desired color
                    ),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  contentPadding: EdgeInsets.only(left: 10, top: 10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff001533),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .white, // Change the color to the desired color
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  contentPadding: EdgeInsets.only(left: 10, top: 10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff001533),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors
                          .white, // Change the color to the desired color
                    ),
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  contentPadding: EdgeInsets.only(left: 10, top: 10.0),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: CheckboxListTile(
                checkColor: Colors.white,
                title: Text("Agree Terms And Conditions",
                style: TextStyle(color: Colors.white),),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff001533),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    //make color or elevated button transparent
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Home()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text("REGISTER",style: const TextStyle(color: Colors.white),),
                  )),
            ),

          ],
        ),
      ),
    );
  }
  // Function to show the login pop-up

}
