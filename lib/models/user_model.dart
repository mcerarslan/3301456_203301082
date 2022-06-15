
class UserModel {
  String? uid;
  String? email;
  String? ad;
  String? soyAd;

UserModel({this.uid,this.email,this.ad,this.soyAd});

factory UserModel.fromMap(map)
{
  return UserModel(
    uid: map['uid'],
    email: map['email'],
    ad: map['ad'],
    soyAd: map['soyAd'],
  );
}

Map<String,dynamic> toMap() {
  return{
    'uid': uid,
    'email':email,
    'ad':ad,
    'soyAd':soyAd,
  };
}

}