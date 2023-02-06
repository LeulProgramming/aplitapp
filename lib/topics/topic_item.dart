import 'package:aplitapp/topics/topics.dart';
import 'package:flutter/material.dart';
import 'package:aplitapp/models.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TopicItem extends StatelessWidget {
  final Topic topic;
  const TopicItem({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: topic.img,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => TopicScreen(topic: topic)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: SizedBox(
                    child: Image.asset('assets/${topic.img}',
                        fit: BoxFit.contain)),
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  topic.theme,
                  style: const TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class TopicScreen extends StatelessWidget {
  final Topic topic;
  const TopicScreen({Key? key, required this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic.theme),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          Hero(
              tag: topic.img,
              child: Image.asset(
                'assets/${topic.img}',
                width: MediaQuery.of(context).size.width,
              )),
          Text(
            topic.theme,
            style: const TextStyle(
                height: 2, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
