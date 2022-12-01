import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class LazyLoading extends StatefulWidget {
  const LazyLoading({super.key});

  @override
  _LazyLoadingState createState() {
    return _LazyLoadingState();
  }
}

class _LazyLoadingState extends State<LazyLoading> {
  late List myList;
  final ScrollController _scrollController = ScrollController();
  int _currentMax = 10;

  @override
  void initState() {
    super.initState();
    myList = List.generate(10, (i) => "Number : ${i + 1}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      myList.add("Number : ${i + 1}");
    }

    _currentMax = _currentMax + 10;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lazy Loading"),
      ),
      body: LazyLoadScrollView(child: ListView.builder(
        controller: _scrollController,
        itemExtent: 100,
        itemBuilder: (context, i) {
          if (i == myList.length) {
            return const CupertinoActivityIndicator();
          }
          return ListTile(
            title: Text(myList[i]),
          );
        },
        itemCount: myList.length + 1,
      ), onEndOfPage: () => _scrollController)
    );
  }
}