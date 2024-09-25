class Message {
  final int user2Id;
  final String message;

  Message({
    required this.user2Id,
    required this.message,
  });
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_two_id': user2Id,
        'message': message,
      };
}
