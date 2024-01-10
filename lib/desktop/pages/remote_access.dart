import 'package:flutter/material.dart';
import '../models/bar_model.dart';
import 'package:ForManu/desktop/widgets/user_info.dart';



class RemoteAccess extends StatefulWidget {
  const RemoteAccess({super.key});

  @override
  State<RemoteAccess> createState() => _RemoteAccessState();
}

class _RemoteAccessState extends State<RemoteAccess> {
  int selected = 0;
  List<menuItem> backMenuIcons =[
    menuItem(Image.asset("assets/images/category.png") , "Главная"),
    menuItem(Image.asset("assets/images/hashtag.png") , "Автоматизации"),
    menuItem(Image.asset("assets/images/wifi.png") , "Удаленный доступ"),
  ];
  List<menuItem> botMenuIcons =[
    menuItem(Image.asset("assets/images/messages-2.png") , "Обратная связь"),
    menuItem(Image.asset("assets/images/flash.png") , "О Manuspect"),
    menuItem(Image.asset("assets/images/2user.png") , "Друзья"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:const Color(0xff000000),
        child: Row(
          children: [
            Expanded( 
              child: Container(
              padding: EdgeInsets.only(top: 20,bottom: 10),
              decoration: const BoxDecoration(
                color: Color(0xff0B0C10),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex:11,
                      child: Container(
                        child: ListView.builder(
                          itemCount: backMenuIcons.length,
                          itemBuilder: (context,index) {
                          return Container(
                           margin:EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            decoration: BoxDecoration(color:selected==index? Color(0xff13141C):Color(0x00000000) ,borderRadius: BorderRadius.circular(30),),
                            child: ListTile(
                              hoverColor: Colors.white,
                              onTap: () {
                              },
                              leading: backMenuIcons[index].icon,
                              title: Text(backMenuIcons[index].text,style: TextStyle(fontSize: 16, color: Color(0xff917DAC),),),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded( 
                      flex: 4,
                      child: Container(
                            child: ListView.builder(
                              itemCount:  botMenuIcons.length,
                              itemBuilder: (context,index) {
                              return Container(
                               margin:EdgeInsets.only(left: 20,right: 20,bottom: 10),
                                decoration: BoxDecoration(color:selected==index+3? Color(0xff13141C):Color(0x00000000) ,borderRadius: BorderRadius.circular(30),),
                                child: ListTile(
                                  hoverColor: Colors.white,
                                  onTap: () {
                                  },
                                  leading: botMenuIcons[index].icon,
                                  title: Text(botMenuIcons[index].text,style: TextStyle(fontSize: 16, color: Color(0xff917DAC),),),
                                ),
                              );
                            }),
                        
                      ),
                    ),
                    Expanded(child: Container(child: UserInfo(),padding: EdgeInsets.only(right: 8),)),
                  ],
                ),
              ),
            ),
            Expanded(flex: 4,child: Container(color:  Color(0xff000000),))
          ],
        ),
      ),
    );
  }
}