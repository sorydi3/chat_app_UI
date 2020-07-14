import 'package:demo_app_1/models/Message.dart';
import 'package:flutter/material.dart';

class FavoriteContacte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('favorite Contacts',style: TextStyle(
                  color: Colors.blueGrey,fontSize: 18.0,fontWeight: FontWeight.bold,letterSpacing: 1.0,
                ),),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: (){
                  },
                  color: Colors.blueGrey,
                  iconSize: 30.0,
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 10.0),itemCount: favorites.length,
              scrollDirection: Axis.horizontal,

              itemBuilder: (BuildContext context,int idx){
                return GestureDetector(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(

                      children: <Widget>[
                        CircleAvatar( radius: 34.0,
                          backgroundImage: AssetImage(favorites[idx].imageUrl),
                        ),
                        SizedBox(height: 10.0,),
                        Text(favorites[idx].name,style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w600,fontSize:16.0 ),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
