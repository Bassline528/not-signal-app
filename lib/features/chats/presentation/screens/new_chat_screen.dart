import 'package:flutter/material.dart';
import 'package:not_signal/core/helpers/theme_helper.dart';

class NewChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New message"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SearchBar(
              elevation: MaterialStateProperty.all(0),
              hintText: 'Search name',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  //generate a list of contacts
                  children: List.generate(
                    200,
                    (index) => ListTile(
                      leading: CircleAvatar(),
                      title: Text('Name'),
                      subtitle: Text('Last message'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
