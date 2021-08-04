import 'package:flutter/material.dart';
import 'package:movies_app/src/container/single_user_container.dart';
import 'package:movies_app/src/model/app_user.dart';

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
            body: SingleChildScrollView(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text('User ' + user.toString()),
                    const Text('Here will be some reviews'),
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
