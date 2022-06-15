import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mceapp/Anasayfa.dart';
import 'package:mceapp/Ekip.dart';
import 'package:mceapp/Hakkimizda.dart';
import 'package:mceapp/Iletisim.dart';
import 'package:mceapp/Login_screen.dart';
import 'package:mceapp/Portfolyo.dart';
import 'package:mceapp/models/user_model.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName:  Text("${loggedInUser.ad} ${loggedInUser.soyAd}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text("${loggedInUser.email}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              child: ClipOval(
                child: Image.network(
                  'http://cdn.onlinewebfonts.com/svg/img_180628.png',
                  width: 90,
                  color: Color(0xFF1f1536),
                  height: 90,
                    fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF1f1536),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Anasayfa()),
                );
              }

          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Hakkımızda'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Hakkimizda()),
              );
            }

          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Portfolyo & İşlerimiz'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Portfolyo()),
              );
            }
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Ekibimiz'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ekip()),
              );
            }

          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('İletişim'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Iletisim()),
              );
            }

          ),
          Divider(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Çıkış'),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) => {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> LoginScreen()), (Route<dynamic> route) => false)
              });
            },

          ),
      ],
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


