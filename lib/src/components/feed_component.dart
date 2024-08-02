import 'package:flutter/material.dart';

class FeedComponent extends StatelessWidget {
  const FeedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const ListTile(
              title: Text('username'),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096'),
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              width: 400,
              color: Colors.grey,
              child: Image.network(
                  'https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg'),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.favorite_border),
                SizedBox(width: 10),
                Icon(Icons.comment_outlined),
                SizedBox(width: 10),
                Icon(Icons.send_outlined),
                SizedBox(width: 250),
                Expanded(
                  child: Icon(Icons.bookmark_outline),
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '142.177 likeds',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('White your caption here...#hashtag...more'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('View all comments'),
                ),
                ListTile(
                  title: Text(style: TextStyle(fontSize: 13), 'Add comment'),
                  leading: CircleAvatar(
                    radius: 14,
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096'),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
