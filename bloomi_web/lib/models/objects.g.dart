// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      img: json['img'] as String,
      lastSeen: json['lastSeen'] as String,
      isOnline: json['isOnline'] as bool,
      token: json['token'] as String? ?? '',
      userType: json['userType'] as String,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'img': instance.img,
      'lastSeen': instance.lastSeen,
      'isOnline': instance.isOnline,
      'token': instance.token,
      'userType': instance.userType,
    };

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) =>
    ConversationModel(
      id: json['id'] as String,
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      usersArray: (json['usersArray'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['lastMessage'] as String,
      lastMessageTime: json['lastMessageTime'] as String,
      createdBy: json['createdBy'] as String,
    );

Map<String, dynamic> _$ConversationModelToJson(ConversationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users': instance.users,
      'usersArray': instance.usersArray.map((e) => e.toJson()).toList(),
      'lastMessage': instance.lastMessage,
      'lastMessageTime': instance.lastMessageTime,
      'createdBy': instance.createdBy,
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      conId: json['conId'] as String,
      senderName: json['senderName'] as String,
      senderId: json['senderId'] as String,
      reciverId: json['reciverId'] as String,
      message: json['message'] as String,
      messageTime: json['messageTime'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'conId': instance.conId,
      'senderName': instance.senderName,
      'senderId': instance.senderId,
      'reciverId': instance.reciverId,
      'message': instance.message,
      'messageTime': instance.messageTime,
    };

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => NoteModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$NoteModelToJson(NoteModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      department: json['department'] as String,
      faculty: json['faculty'] as String,
      year: json['year'] as String,
      userCredential: json['userCredential'] as String,
      userType: json['userType'] as String,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'department': instance.department,
      'faculty': instance.faculty,
      'year': instance.year,
      'userCredential': instance.userCredential,
      'userType': instance.userType,
      'imgUrl': instance.imgUrl,
    };
