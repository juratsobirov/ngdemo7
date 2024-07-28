import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title:Text("profile".tr(),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                    "welcome".tr(),
                    style: TextStyle(fontSize: 20,)),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 150,
                  child: MaterialButton(
                    highlightColor: Colors.lightGreenAccent,
                    onPressed: () {
                      setState(() {
                        context.setLocale(Locale('en', 'US'));
                      });
                    },

                    height: 45,
                    color: Colors.cyan,
                    child:
                    Text('lan_english'.tr(), style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  width: 150,
                  child: MaterialButton(
                    highlightColor: Colors.lightGreenAccent,
                    onPressed: () {
                      setState(() {
                        context.setLocale(Locale('ru', 'RU'));
                      });
                    },
                    height: 45,
                    color: Colors.cyan,
                    child:
                    Text("lan_russian".tr(), style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 10),

                Container(
                  width: 150,
                  child: MaterialButton(
                    highlightColor: Colors.lightGreenAccent,
                    onPressed: () {
                      setState(() {
                        context.setLocale(Locale('uz', 'UZ'));
                      });
                    },
                    height: 45,
                    color: Colors.cyan,
                    child: Text("lan_uzbek".tr(), style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height:10,),

                Container(
                  width: 150,
                  child: MaterialButton(
                    highlightColor: Colors.lightGreenAccent,
                    onPressed: (){
                      setState(() {
                        context.setLocale(Locale('ko', 'KR'));
                      });
                    },
                    height:45,
                    color: Colors.cyan,
                    child: Text("lan_korean".tr(), style: TextStyle(color: Colors.white,)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
