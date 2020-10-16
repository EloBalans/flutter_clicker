import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_01/models/ware.dart';
import 'package:game_01/models/user.dart';

class DatabaseService{

  final String uid;
  DatabaseService({ this.uid});

  final CollectionReference wareCollection = Firestore.instance.collection('ware'); 

  Future updateUserData(String username, int lvlabilityone, int lvlabilitytwo, int lvlabilitythree, String actualware, int wares, int points,int uptolvlone,int uptolvltwo,int uptolvlthree,int intrest) async {
    return await wareCollection.document(uid).setData({
      'username' : username,
      'lvlabilityone' : lvlabilityone,
      'lvlabilitytwo' : lvlabilitytwo,
      'lvlabilitythree' : lvlabilitythree,
      'actualware' : actualware,
      'wares' : wares,
      'points' : points,
      'uptolvlone' : uptolvlone,
      'uptolvltwo' : uptolvltwo,
      'uptolvlthree' : uptolvlthree,
      'intrest' : intrest,

    });

  }

// Future updateUserAbility(int lvlabilityone, int lvlabilitytwo, int lvlabilitythree,int uptolvlone,int uptolvltwo,int uptolvlthree) async {
// return await wareCollection.document(uid).setData({
//       'lvlabilityone' : lvlabilityone,
//       'lvlabilitytwo' : lvlabilitytwo,
//       'lvlabilitythree' : lvlabilitythree,
//       'uptolvlone' : uptolvlone,
//       'uptolvltwo' : uptolvltwo,
//       'uptolvlthree' : uptolvlthree,

//     });

// }


  List<Ware> _wareListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return Ware(
        username: doc.data['username'] ?? '',
        lvlabilityone: doc.data['lvlabilityone'] ??  0,
        lvlabilitytwo: doc.data['lvlabilitytwo'] ??  0,
        lvlabilitythree: doc.data['lvlabilitythree'] ??  0,
        actualware: doc.data['actualware'] ?? '',
        wares: doc.data['wares'] ?? 0,
        points: doc.data['points'] ?? 0,
        uptolvlone: doc.data['uptolvlone'] ?? 10,
        uptolvltwo: doc.data['uptolvltwo'] ?? 100,
        uptolvlthree: doc.data['uptolvlthree'] ?? 100,
        intrest: doc.data['intrest'] ?? 1,
        
      );
    }).toList();
  }

UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
  return UserData(
    uid: uid,
    username: snapshot.data['username'],
    lvlabilityone: snapshot.data['lvlabilityone'],
    lvlabilitytwo: snapshot.data['lvlabilitytwo'],
    lvlabilitythree: snapshot.data['lvlabilitythree'],
    actualware: snapshot.data['actualware'],
    wares: snapshot.data['wares'],
    points: snapshot.data['points'],
    uptolvlone: snapshot.data['uptolvlone'],
    uptolvltwo: snapshot.data['uptolvltwo'],
    uptolvlthree: snapshot.data['uptolvlthree'],
    intrest: snapshot.data['intrest'],
  );
}

  
  Stream<List<Ware>> get ware {
      return wareCollection.snapshots()
      .map(_wareListFromSnapshot);
    }


  Stream<UserData> get userData {
    return wareCollection.document(uid).snapshots()
    .map(_userDataFromSnapshot);
  }

}