import 'package:flutter/material.dart';

class ExpansionPaneListDemo extends StatefulWidget {
  @override
  _ExpansionPaneListDemoState createState() => _ExpansionPaneListDemoState();
}

class _ExpansionPaneListDemoState extends State<ExpansionPaneListDemo> {
  List<int> mList;
  List<ExpandStateBean> expandList;

  _ExpansionPaneListDemoState() {
    mList = new List();
    expandList = new List();
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expandList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand deom,'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index) {
            return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('this is No.$index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion no.$index'),
                ),
                isExpanded: expandList[index].isOpen);
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.index, this.isOpen);
}
