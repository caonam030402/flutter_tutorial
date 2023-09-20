import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/components/tool_bar.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];
  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
        appBar: ToolBar(
          title: 'Home Page',
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.ic_location),
            )
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
        ));
  }

  mockUserFromServer() {
    for (var i = 0; i < 50; i++) {
      users.add('User number $i');
    }
  }
}
