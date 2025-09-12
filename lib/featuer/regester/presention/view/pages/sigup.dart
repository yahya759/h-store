import 'package:flutter/material.dart';
import 'package:hstore/const/textstyle/textstyle.dart';
import 'package:hstore/featuer/regester/presention/view/wideget/appbar.dart';

class Sigup extends StatelessWidget {
  const Sigup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Appbar(),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email"),
                // prefixIcon: Icon(Icons.password_rounded),
                // suffixIcon: Icon(Icons.abc_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text("password"),
                // prefixIcon: Icon(Icons.password_rounded),
                // suffixIcon: Icon(Icons.abc_sharp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
             SizedBox(height: 40,),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Sigup" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("you alrady have accont" , style: styles.font12,),
                SizedBox(width: 5,),
                GestureDetector(onTap: (){Navigator.pop(context);},child: Text("login? " , style: TextStyle(fontSize: 10 , color: Colors.blueAccent),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
