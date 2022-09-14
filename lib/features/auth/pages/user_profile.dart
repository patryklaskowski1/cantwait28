import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        SignedOutAction(
          (context) {
            Navigator.of(context).pop();
          },
        ),
      ],
      avatarSize: 120,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Your Profile'),
      ),
      children: const [
        Icon(
          Icons.add_a_photo,
        ),
      ],
    );
  }
}
