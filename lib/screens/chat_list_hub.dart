import 'package:flutter/material.dart';
import 'package:swim_app_hack/constant.dart';

class ChatListHub extends StatefulWidget {
  @override
  _ChatListHubState createState() => _ChatListHubState();
}

List chat = [];

class _ChatListHubState extends State<ChatListHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MINOR_COLOR,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 157, 169, 1),
        centerTitle: true,
        title: Image.asset(
          'assets/images/swim_logo.png',
          fit: BoxFit.contain,
          width: 80,
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          CustomTile(
            mini: false,
            onTap: () {Navigator.of(context)
                  .pushNamed("./screens/one_to_one_chat_screen.dart");},
            title: Text(
              "AMY",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Hello",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1559143974-b84bd822c4e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {Navigator.of(context)
                  .pushNamed("./screens/group_chat_screen.dart");},
            title: Text(
              "Group Title",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Do you still need the documents?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Jamie",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Hello",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Leo",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Hello",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60 "),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Sasha",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "I love you too",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Mufasa",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Call me Simba",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Manny",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "Tell me more about Swim",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1531251445707-1f000e1e87d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomTile(
            mini: false,
            onTap: () {},
            title: Text(
              "Jennifer",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Arial", fontSize: 19),
            ),
            subtitle: Text(
              "I gotcha",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            leading: Container(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white24, width: 2)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final Widget leading;

  final Widget title;
  final Widget icon;
  final Widget subtitle;
  final Widget trailing;
  final EdgeInsets margin;
  final bool mini;
  final GestureTapCallback onTap;
  final GestureLongPressCallback onLongPress;

  const CustomTile(
      {Key key,
      @required this.leading,
      @required this.title,
      this.icon,
      @required this.subtitle,
      this.trailing,
      this.margin = const EdgeInsets.all(0),
      this.mini = true,
      this.onTap,
      this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mini ? 10 : 0),
        margin: margin,
        child: Row(
          children: <Widget>[
            leading,
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: mini ? 10 : 15),
                padding: EdgeInsets.symmetric(vertical: mini ? 3 : 20),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: MAIN_COLOR))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title,
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            icon ?? Container(),
                            // icon!=null ? icon : Container(),
                            subtitle,
                          ],
                        ),
                      ],
                    ),
                    trailing ?? Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
