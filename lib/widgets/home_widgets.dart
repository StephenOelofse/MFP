import 'package:flutter/material.dart';

List<Widget> homeWidgets = [
  const ShareSomething(),
  const LogCard(),
  const SizedBox(
    height: 20,
  ),
  const BlogCard(
      title: '6 Common Walking Myths Busted!',
      subtitle: '2 days ago from Flutter.Blog',
      imageUrl:
          'https://images.unsplash.com/photo-1538471726790-0f6b031f1982?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      blogUrl: 'https://unsplash.com/photos/sLp-kPZatLc'),
  const SizedBox(
    height: 20,
  ),
  const BlogCard(
      title: 'These New Habits Are Here To Stay!',
      subtitle: '5 days ago from Flutter.Blog',
      imageUrl:
          'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      blogUrl: 'https://unsplash.com/s/photos/exercise'),
  const SizedBox(
    height: 20,
  ),
  const BlogCard(
      title: 'How yoga can affect your life!',
      subtitle: '19 days ago from fitness.Blog',
      imageUrl:
          'https://images.unsplash.com/photo-1549576490-b0b4831ef60a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
      blogUrl: 'https://unsplash.com/s/photos/exercise'),
  const SizedBox(
    height: 20,
  ),
];

class LogCard extends StatelessWidget {
  const LogCard({Key? key}) : super(key: key);

  //buttonstyling
  final Color buttonColor = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 14, right: 14),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.clear_sharp,
                    color: Colors.grey,
                    size: 18,
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Persons name'),
              subtitle: Text('Yesterday'),
            ),
            Row(
              children: const <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text("Has logged for x days in a row!"),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
            const Divider(color: Colors.grey),
            Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: buttonColor),
                      icon: const Icon(Icons.thumb_up_outlined),
                      label: const Text('Like'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: buttonColor),
                      icon: const Icon(Icons.comment_outlined),
                      label: const Text('Comment'),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ShareSomething extends StatefulWidget {
  const ShareSomething({Key? key}) : super(key: key);

  @override
  State<ShareSomething> createState() => _ShareSomethingState();
}

class _ShareSomethingState extends State<ShareSomething> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
          leading: Icon(Icons.person),
          title: Text('Share Something ...'),
          trailing: Icon(Icons.camera_enhance)),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.blogUrl})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageUrl;
  final String blogUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
            child: Column(
      children: [
        ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
        ),
        Row(
          children: [
            InkWell(
              child: SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 10,
                  child: Image.network(imageUrl, fit: BoxFit.fill)),
            ),
          ],
        ),
      ],
    )));
  }
}
