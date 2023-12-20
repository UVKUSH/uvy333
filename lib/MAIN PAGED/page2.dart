import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final List<String> _images = [
    'https://picsum.photos/200/300',
    'https://i.imgur.com/TCuH33Z_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/bDBhYCF_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Wpcduz7_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/FuRY8YK_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/IRUns4S_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/U7cdJCv_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/8NJKuAU_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/sQmsMuI_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Xg6l8Zi_d.jpg?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/yKh2a2W_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://picsum.photos/200/300',
    'https://i.imgur.com/TCuH33Z_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/bDBhYCF_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Wpcduz7_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/FuRY8YK_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/IRUns4S_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/U7cdJCv_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/8NJKuAU_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/sQmsMuI_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Xg6l8Zi_d.jpg?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/yKh2a2W_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://picsum.photos/200/300',
    'https://i.imgur.com/TCuH33Z_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/bDBhYCF_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Wpcduz7_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/FuRY8YK_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/IRUns4S_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/U7cdJCv_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/8NJKuAU_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/sQmsMuI_d.webp?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/Xg6l8Zi_d.jpg?maxwidth=520&shape=thumb&fidelity=high',
    'https://i.imgur.com/yKh2a2W_d.webp?maxwidth=520&shape=thumb&fidelity=high',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          '',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Theme.of(context).textTheme.bodyText1!.color,
                fontWeight: FontWeight.bold,
              ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Theme.of(context).textTheme.bodyText2!.color,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
                filled: true,
                fillColor: Theme.of(context).cardColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 12.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: _images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            _images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
