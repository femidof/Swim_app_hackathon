import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:swim_app_hack/constant.dart';
import 'package:swim_app_hack/widgets/custom_chatbar.dart';

class OneOnOneChatScreen extends StatefulWidget {
  @override
  OneOnOneChatScreenState createState() => OneOnOneChatScreenState();
}

class OneOnOneChatScreenState extends State<OneOnOneChatScreen> {
  TextEditingController textFieldController;
  bool isWriting;
  bool showEmojiPicker;
  FocusNode textFieldFocus;

  @override
  void initState() {
    super.initState();
    textFieldController = TextEditingController();
    isWriting = false;
    showEmojiPicker = false;
    textFieldFocus = FocusNode();
  }

  showKeyboard() => textFieldFocus.requestFocus();
  hideKeyboard() => textFieldFocus.unfocus();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customChatBar(),
      body: Column(
        children: <Widget>[
          // Flexible(
          //   child: messageList(),
          // ),
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
                    onPressed: () {},
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

  messageList() {}
}
