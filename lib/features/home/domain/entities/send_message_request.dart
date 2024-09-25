class SendMessageRequest {
  final String message;
  final String userId;

  SendMessageRequest({
    required this.message,
    required this.userId,
  });
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message,
        'userId': userId,
      };
}
