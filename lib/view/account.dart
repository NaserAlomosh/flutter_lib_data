import 'package:flutter/material.dart';

import '../select_box/multiple_select_box/multiple_select_box.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Center(
        child: CustomMultipleSelectBox(),
      )),
    );
  }
}
