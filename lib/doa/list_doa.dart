import 'package:flutter/material.dart';
import 'all_doa_list.dart';
import '../utils/custom_widget.dart';
import '../model/doa.dart';

class ListDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 12.0, top: 6.0),
                  child: Text ('A Collection of Prayers', style: styleTitle)
              ),
            ],
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: dataListDoa.map((list){
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    color: Colors.white,
                    onPressed: (){},
                    child: ListTile(
                      title: Text(
                        list.title,
                        style: listTitle,
                      ),
                      trailing: Icon(
                        Icons.navigate_next,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[300]))),
            child: RaisedButton(elevation: 0,
              color: Colors.red,
              onPressed: (){
                Navigator.push(context, PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 30),
                    transitionsBuilder: (context, animation, animationTime, child){
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.elasticOut
                      );
                      return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, animationTime){
                      return AllDoaList();
                    }
                ));
              },
              child: Container(
                child: ListTile(
                  title: Center(
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


