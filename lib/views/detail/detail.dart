import 'package:flutter/material.dart';

import '../../models/task.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: task.backgroundColor,
      body: Center(
        child: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [
                    
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
  
  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: task.backgroundColor,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(), 
        icon: Icon(Icons.arrow_back),
        iconSize: 20,
        color: task.iconColor,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
          color: task.iconColor,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${task.title}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              )
            ),
            SizedBox(height: 5)

          ]
        ),
      ),
    );
  }
}