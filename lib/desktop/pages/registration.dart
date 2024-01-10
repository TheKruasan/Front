import 'package:flutter/material.dart';

import 'password_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextStyle style1= const TextStyle(fontSize: 32,fontFamily: 'Manrope',fontWeight: FontWeight.w700,color: Colors.white);
  TextStyle style2= const TextStyle(fontSize: 16,fontFamily: 'Manrope');
  TextStyle style3= const TextStyle(fontSize: 16,fontFamily: 'Manrope',color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Text("Вход или регистрация",style: style1),
          Container(
            height: 20,
          ),
          Container(
            width: 398,
            height: 52,
            child: TextField(
              style: style2,
              decoration: const InputDecoration(
                prefix: Text("   "),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "E-mail",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30)),
                ),
              ),
            ),
          ),
          Container(
            height: 20,
          ),
         Container(
          width: 398,
          height: 52,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF7700FF)),overlayColor: MaterialStatePropertyAll(Color.fromARGB(255, 153, 74, 243)),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordPage()));
              },
                child: Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_sharp,color: Colors.white,),
                      Container(
                        width: 15,
                      ),
                      Text("Продолжить", style: style3,),
                    ],
                  ),
                ),
            ),
         ),
      
          Container(height:50,),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30),),
            width: 398,
            height: 52,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(0, 119, 0, 255)),overlayColor: MaterialStatePropertyAll(Color.fromARGB(157, 200, 192, 209)),),
              onPressed: (){},
              child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple,color: Colors.white,),
                    Container(
                      width: 15,
                    ),
                    Text("Продолжить c Apple ID", style: style3,),
                  ],
                ),
              ),
          ),
          Container(height: 10,),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30),),
            width: 398,
            height: 52,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(0, 119, 0, 255)),overlayColor: MaterialStatePropertyAll(Color.fromARGB(157, 200, 192, 209)),),
              onPressed: (){},
              child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google_icon.png"),
                    Container(
                      width: 15,
                    ),
                    Text("Продолжить c Google", style: style3,),
                  ],
                ),
              ),
          ),
        ],
        ),
      ),
    );
  }
}