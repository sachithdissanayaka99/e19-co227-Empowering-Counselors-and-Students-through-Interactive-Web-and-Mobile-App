class AllUserModel {
  String uid;
  String name;
  String email;
  String phone;
  String department;
  String faculty;
  String year;
  String userCredential;
  String userType;
  String imgUrl;

  AllUserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.department,
    required this.faculty,
    required this.year,
    required this.userCredential,
    required this.userType,
    required this.imgUrl,
  });

  //-----------binding data from firestore to user model----------------
  AllUserModel.fromJson(Map<String, dynamic> json)
      : uid = json['uid'],
        name = json['name'],
        email = json['email'],
        phone = json['phone'],
        department = json['department'],
        faculty = json['faculty'],
        year = json['year'],
        userCredential = json['userCredential'],
        userType = json['userType'],
        imgUrl = json['imgUrl'];
}