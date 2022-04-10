import 'package:firebase_database/firebase_database.dart';

import '../../models/student/student.dart';

class FirebaseStudent {
  var firbaseDb = FirebaseDatabase.instance.ref().child('students');
  Future<StudentModel?> getStudent(String id) async {
    var studentJson = await firbaseDb.child(id).get();
    if (studentJson.exists) {
      var student = StudentModel.fromJson(studentJson.value as Map);
      return student;
    }
  }
}
