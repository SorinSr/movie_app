import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/actions/index.dart';
import 'package:movies_app/src/container/single_user_container.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/app_user.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/loginPage');
              },
              child: CircleAvatar(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                child: const Icon(Icons.supervised_user_circle_sharp),
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onLongPress: () {
              StoreProvider.of<AppState>(context).dispatch(const SignOut());
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Signing off ${user.username}'),
              ));
            },
            child: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              child: Text(user.username[0].toUpperCase()),
            ),
          ),
        );
      },
    );
  }
}
