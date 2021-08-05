import 'package:flutter/material.dart';
import 'package:movies_app/src/container/single_user_container.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:movies_app/src/presentation/user_avatar.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleUserContainer(
      builder: (BuildContext context, AppUser? user) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: const UserAvatar(),
              title: const Text('Reviews page'),
            ),
            body: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text('User ' + user.toString()),
                    const Text('Here will be some reviews'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Go back!'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
