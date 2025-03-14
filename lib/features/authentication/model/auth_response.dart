// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthResponse {
  final String? displayName;
  final String email;
  final String id;
  final String? photoUrl;
  AuthResponse({
    this.displayName,
    required this.email,
    required this.id,
    this.photoUrl,
  });

  AuthResponse copyWith({
    String? displayName,
    String? email,
    String? id,
    String? photoUrl,
  }) {
    return AuthResponse(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
      'id': id,
      'photoUrl': photoUrl,
    };
  }

  factory AuthResponse.fromMap(Map<String, dynamic> map) {
    return AuthResponse(
      displayName: map['displayName'] != null ? map['displayName'] as String : null,
      email: map['email'] as String,
      id: map['id'] as String,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromJson(String source) => AuthResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AuthResponse(displayName: $displayName, email: $email, id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(covariant AuthResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.displayName == displayName &&
      other.email == email &&
      other.id == id &&
      other.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return displayName.hashCode ^
      email.hashCode ^
      id.hashCode ^
      photoUrl.hashCode;
  }
}
