import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:swim_app_hack/constant.dart';
import 'package:swim_app_hack/models/message_model.dart';
import 'package:swim_app_hack/models/user_model.dart';
import 'package:swim_app_hack/widgets/custom_chatbar.dart';

final firestore = Firestore.instance;

class OneOnOneChatScreen extends StatefulWidget {
  @override
  OneOnOneChatScreenState createState() => OneOnOneChatScreenState();
}

class OneOnOneChatScreenState extends State<OneOnOneChatScreen> {
  TextEditingController textFieldController;
  bool isWriting;
  bool showEmojiPicker;
  FocusNode textFieldFocus;
  ScrollController _listScrollController;
  User _currentuser;
  User _recievinguser;
  String messageText;

  @override
  void initState() {
    super.initState();
    messageText = '';
    textFieldController = TextEditingController();
    isWriting = false;
    showEmojiPicker = false;
    textFieldFocus = FocusNode();
    _listScrollController = ScrollController();
    _currentuser = User(id: "22", name: "Me", imageUrl: null);
    _recievinguser = User(id: "245", name: "EMY", imageUrl: null);
  }

  showKeyboard() => textFieldFocus.requestFocus();
  hideKeyboard() => textFieldFocus.unfocus();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customChatBar(),
      body: Column(
        children: <Widget>[
          messagesStream(),
          messageInputContainer(),
          showEmojiPicker
              ? Container(
                  child: emojiContainer(),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget messageInputContainer() {
    setWritingTo(bool val) {
      setState(() {
        isWriting = val;
      });
    }

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                // gradient: MAIN_GRAD,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.attach_file,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                TextField(
                  controller: textFieldController,
                  focusNode: textFieldFocus,
                  onTap: () => hideEmojiContainer(),
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                  onChanged: (val) {
                    (val.length > 0 && val.trim() != "")
                        ? setWritingTo(true)
                        : setWritingTo(false);
                    messageText = val;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.ac_unit),
                    hintText: "Type a message",
                    hintStyle: TextStyle(
                      color: MAIN_COLOR,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50.0),
                      ),
                      borderSide: BorderSide(color: MAIN_COLOR, width: 3),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (!showEmojiPicker) {
                      hideKeyboard();
                      showEmojiContainer();
                    } else {
                      showKeyboard();
                      hideEmojiContainer();
                    }
                  },
                  icon: Icon(
                    Icons.face,
                    color: Colors.transparent,
                  ),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
              ],
            ),
          ),
          isWriting
              ? Container()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.mic,
                    color: Colors.black54,
                  ),
                ),
          isWriting
              ? Container()
              : GestureDetector(
                  onTap: () {},
                  // pickImage-----ImageSource.camera,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black54,
                  ),
                ),

          // For Send Botton
          isWriting
              ? Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    gradient: MAIN_GRAD,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 15,
                    ),
                    onPressed: () {
                      textFieldController.clear();
                      firestore.collection('messages').add({
                        'text': messageText,
                        'sender': currentUser.id,
                        'timestamp':
                            DateTime.now().toUtc().millisecondsSinceEpoch,
                      });
                    },
                  ))
              : Container()
        ],
      ),
    );
  }

  showEmojiContainer() {
    setState(() {
      showEmojiPicker = true;
    });
  }

  hideEmojiContainer() {
    setState(() {
      showEmojiPicker = false;
    });
  }

  emojiContainer() {
    return EmojiPicker(
      rows: 3,
      bgColor: Colors.white,
      columns: 7,
      indicatorColor: MAIN_COLOR,
      onEmojiSelected: (emoji, category) {
        // null;
        setState(() {
          isWriting = true;
        });
        textFieldController.text = textFieldController.text + emoji.emoji;
      },
      recommendKeywords: ["face", "happy", "party", "sad"],
      numRecommended: 50,
    );
  }

  Widget receiverLayout(Message message) {
    Radius messageRadius = Radius.circular(10);

    return Container(
      margin: EdgeInsets.only(top: 12),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: messageRadius,
          topRight: messageRadius,
          bottomLeft: messageRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: getMessage(message),
        // Text(
        //   "Hello",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 16,
        //   ),
        // ),
      ),
    );
  }

  Widget senderLayout(Message message) {
    Radius messageRadius = Radius.circular(15);

    return Container(
      margin: EdgeInsets.only(top: 12),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: messageRadius,
          topRight: messageRadius,
          bottomLeft: messageRadius,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: getMessage(message),
        // Text(
        //   "Hello",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 16,
        //   ),
        // ),
      ),
    );
  }

  getMessage(Message message) {
    return Text(
      message != null ? message.text : "",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }

  messagesStream() {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore
          .collection("private_message")
          .document(currentUser.id)
          .collection(_recievinguser.id)
          .orderBy("timestamp", descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }

        final messages = snapshot.data.documents.reversed;
        // final calls = snapshot.data.documents;
        List<MessageBubble> messageBubbles = [];

        for (var message in messages) {
          final messageText = message.data['text'];
          final messageSender = message.data['sender'];
          final currentUser = _currentuser;

          if (currentUser == messageSender) {
            //message from logged in User
          }
          final messageBubble = MessageBubble(
            sender: messageSender,
            text: messageText,
            isMe: currentUser == messageSender,
          );
          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 20.0,
            ),
            children: messageBubbles,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.isMe});
  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
            elevation: 5.0,
            color: isMe ? Colors.lightBlueAccent : Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                '$text',
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black54,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
