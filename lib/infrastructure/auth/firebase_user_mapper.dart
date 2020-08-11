import 'package:ddd_flutter_example/domain/auth/auth_value_objects.dart';
import 'package:ddd_flutter_example/domain/auth/user.dart';
import 'package:ddd_flutter_example/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromUniqueString(_.uid),
            name: FullName(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(email: _.email),
          );
  }
}
