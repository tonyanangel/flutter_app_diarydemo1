import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdiarydemo1/diary_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DiaryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(itemCount: 5,itemBuilder: (context,index)=>index ==0
        ?new SizedBox(
          child: new DiaryStories(),
          height: deviceSize.height * 0.20,
                )
        :Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0,16.0),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
               children: <Widget>[
                 Container(
                   height: 20.0,
                   width: 20.0,
                   decoration: new BoxDecoration(
                     shape: BoxShape.circle,
                     image:   new DecorationImage(fit: BoxFit.fill,image: new NetworkImage("https://scontent.fdad3-1.fna.fbcdn.net/v/t1.0-9/69134150_2452774021504182_6094794180570120192_o.jpg?_nc_cat=102&_nc_sid=dd9801&_nc_ohc=wojeGkCC1XoAX_tWJPg&_nc_ht=scontent.fdad3-1.fna&oh=c881466e2d50184979f22e776d5b9f07&oe=5ECE1DB3")
                     ),
                   ),

                 ),
                 new SizedBox(
                   width: 10.0,
                 ),
                 new Text('HuynhTanPhu',style: TextStyle(fontWeight: FontWeight.bold),),

               ],
              ),
              new IconButton(icon: Icon(Icons.more_vert), onPressed: null)
            ]

          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: new Image.network("https://vuonhoaviet.vn/wp-content/uploads/2017/11/75.-Hoa-h%E1%BB%93ng-ngo%E1%BA%A1i-Jardin-Parfume-768x768.jpg",
          fit: BoxFit.cover),


        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Icon(
                    FontAwesomeIcons.heart,

                  ),
                  new SizedBox(
                    width: 16.0,
                  ),
                  new Icon(
                    FontAwesomeIcons.comment,
                  ),
                  new SizedBox(
                    width: 16.0,
                  ),
                  new Icon(FontAwesomeIcons.paperPlane),

                ],

              ),
              new Icon(FontAwesomeIcons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("Like by Mark Zuckerberg and Bill gates and 1000,000,000 others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: 40.0,
                width: 40.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(image: new NetworkImage("https://scontent.fdad3-1.fna.fbcdn.net/v/t1.0-9/69134150_2452774021504182_6094794180570120192_o.jpg?_nc_cat=102&_nc_sid=dd9801&_nc_ohc=wojeGkCC1XoAX_tWJPg&_nc_ht=scontent.fdad3-1.fna&oh=c881466e2d50184979f22e776d5b9f07&oe=5ECE1DB3"),
                  fit: BoxFit.fill)
                ),
              ),
              new SizedBox(
                width: 10.0,

              ),
              Expanded(
                child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",

                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
          Text('1000 year ago', style: TextStyle(color: Colors.grey),),
        )
      ],
    ));
  }
}
