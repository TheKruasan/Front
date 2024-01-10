import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    const double? sizeOfBackButton = 15;
    TextStyle style1= const TextStyle(fontSize: 32,fontFamily: 'Manrope',fontWeight: FontWeight.w700,color: Colors.white);
    TextStyle style2= const TextStyle(fontSize: 16,fontFamily: 'Manrope');
    TextStyle style3= const TextStyle(fontSize: sizeOfBackButton,fontFamily: 'Manrope',color: Colors.white);
    TextStyle style4= const TextStyle(fontSize: 16,fontFamily: 'Manrope',color: Colors.white);
    return Scaffold(
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Container(
               width: 420,
              height: 52,
              child: Row( 
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                      const Icon(Icons.arrow_back_ios,color: Colors.white,size: sizeOfBackButton,),
                      Text("Назад",style: style3,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 30,),
            Text("Введите пароль",style: style1),
            Container(height: 10,),
            Container(
              width: 398,
              height: 52,
              child: TextField(
                obscureText: isObscure,
                style: style4,
                decoration:  InputDecoration( 
                  prefix: const  Text("   "), 
                  suffixIcon:
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      splashColor: Color.fromARGB(0, 0,0,0),
                      hoverColor: Color.fromARGB(0, 0,0,0),
                      focusColor: Color.fromARGB(0, 0,0,0),
                      highlightColor: Color.fromARGB(0, 0,0,0),
                      onPressed: (){
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    icon: Icon(isObscure? CupertinoIcons.eye:CupertinoIcons.eye_slash,color: Colors.white,),),
                  ),
                  hintStyle: const TextStyle(color: Colors.grey),
                  hintText: "Пароль",
                  border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Container(height: 15),
            Container(
          width: 398,
          height: 52,
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF7700FF)),overlayColor: MaterialStatePropertyAll(Color.fromARGB(255, 153, 74, 243)),),
              onPressed: () {
                
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
                      Text("Продолжить", style: style4,),
                    ],
                  ),
                ),
            ),
         ),
         Container(
          height: 20,
         ),
         Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30),),
            width: 398,
            height: 52,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(0, 119, 0, 255)),overlayColor: MaterialStatePropertyAll(Color.fromARGB(157, 200, 192, 209)),),
              onPressed: (){},
                child:Text("Забыли пароль?", style: style4,),
                
              ),
          ),
          ],
        ),
      ),
    );
  }
}