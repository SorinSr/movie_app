import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movies_app/src/model/app_state.dart';
import 'package:movies_app/src/model/app_user.dart';
import 'package:redux/redux.dart';

class SingleUserContainer extends StatelessWidget {
  const SingleUserContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<AppUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.user,
    );
  }
}
