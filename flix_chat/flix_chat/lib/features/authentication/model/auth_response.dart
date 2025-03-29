import 'dart:convert';


class Authorization {
  final String accessToken;
  final String userId;
  final String accountId;
  Authorization({
    required this.accessToken,
    required this.userId,
    required this.accountId,
  });

  Authorization copyWith({
    String? accessToken,
    String? userId,
    String? accountId,
  }) {
    return Authorization(
      accessToken: accessToken ?? this.accessToken,
      userId: userId ?? this.userId,
      accountId: accountId ?? this.accountId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'userId': userId,
      'accountId': accountId,
    };
  }

  factory Authorization.fromMap(Map<String, dynamic> map) {
    return Authorization(
      accessToken: map['accessToken'] as String,
      userId: map['userId'] as String,
      accountId: map['accountId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Authorization.fromJson(String source) => Authorization.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Authorization(accessToken: $accessToken, userId: $userId, accountId: $accountId)';

  @override
  bool operator ==(covariant Authorization other) {
    if (identical(this, other)) return true;
  
    return 
      other.accessToken == accessToken &&
      other.userId == userId &&
      other.accountId == accountId;
  }

  @override
  int get hashCode => accessToken.hashCode ^ userId.hashCode ^ accountId.hashCode;
}
