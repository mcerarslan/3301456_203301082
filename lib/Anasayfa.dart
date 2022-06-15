import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mceapp/Login_screen.dart';
import 'package:mceapp/NavBar.dart';
import 'package:mceapp/models/user_model.dart';
import 'package:mceapp/HavaDurumu.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        drawer: NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1f1536),
          title: Text(
              'mcegraphic',
              style: TextStyle (
                color: Color(0xFFa023f1),
              )
          ),
          centerTitle: true,
        ),
        body:  SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Color(0xFFa023f1),
                  backgroundImage: AssetImage('assets/images/mce4.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hosgeldin',
                  style: TextStyle(
                    fontSize:35,
                    color: Color(0xFF1f1536),
                    fontFamily: 'LeckerliOne',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("${loggedInUser.ad} ${loggedInUser.soyAd}",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text("${loggedInUser.email}",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70,
                  ),
                  padding: EdgeInsets.all(0.7),
                  color: Color(0xFF1f1536),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container (
                  decoration: BoxDecoration(

                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(60, 30, 60, 30),
                  child: Row(
                    children: [
                      Icon(Icons.wb_sunny_rounded,
                        color: Colors.orange,

                      ),
                      SizedBox(
                        width: 10,
                      ),

                      TextButton(child: Text('Hava Durumu  ',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:20,
                        ),

                      ),
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HavaDurumu()),
                          );
                        },
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  height: 30,
                ),
                ActionChip(label: Text("Çıkış",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), backgroundColor: Color(0xFFa023f1),
                    onPressed: () {
                  logout(context);
                    },
                ),
              ],
            ),
          ),
        ),
      );
  }
  Future <void> logout (BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}