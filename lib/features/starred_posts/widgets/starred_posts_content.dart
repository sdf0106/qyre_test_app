import 'package:flutter/material.dart';
import 'starred_posts_placeholder.dart';


class StarredPostsContent extends StatelessWidget {
  const StarredPostsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Starred posts',
            style: Theme.of(context).textTheme.headline1,
          ),
          const StarredPostsPlaceHolder(),
        ],
      ),
    );
  }
}

