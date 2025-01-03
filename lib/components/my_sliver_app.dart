import 'package:flutter/material.dart';

class MySliverApp extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverApp({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
