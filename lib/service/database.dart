import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethos {
  Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .set(userInfoMap);
  }
}
