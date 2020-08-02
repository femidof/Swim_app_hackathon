import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';
import 'package:swim_app_hack/constant.dart';
import 'package:swim_app_hack/widgets/custom_chatbar.dart';

class OneOnOneChatScreen extends StatefulWidget {
  @override
  OneOnOneChatScreenState createState() => OneOnOneChatScreenState();
}

class OneOnOneChatScreenState extends State<OneOnOneChatScreen> {
  TextEditingController textFieldController = TextEditingController();
  bool isWriting = false;
  ScrollController _listScrollController = ScrollController();
  bool showEmojiPicker = false;
  FocusNode textFieldFocus = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  showKeyboard() => textFieldFocus.requestFocus();
  hideKeyboard() => textFieldFocus.unfocus();
  hideEmojiContainer() {
    setState(() {
      showEmojiPicker = false;
    });
  }

  showEmojiContainer() {
    setState(() {
      showEmojiPicker = true;
    });
  }

  emojiContainer() {
    return EmojiPicker(
      rows: 3,
      // bgColor: UniversalVariables.separatorColor,
      columns: 7,
      // indicatorColor: UniversalVariables.gradientColorStarthmm,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customChatBar(),
      body: messageInputContainer(),
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
                // gradient: UniversalVariables.fabGradient,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.attach_file),
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
                    color: Colors.white,
                  ),
                  onChanged: (val) {
                    (val.length > 0 && val.trim() != "")
                        ? setWritingTo(true)
                        : setWritingTo(false);
                  },
                  decoration: InputDecoration(
                    hintText: "Type a message",
                    hintStyle: TextStyle(
                      color: MAIN_COLOR,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                        borderSide: BorderSide.none),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    filled: true,
                    fillColor: MAIN_COLOR,
                    // suffixIcon:
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
                  icon: Icon(Icons.face),
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
                  child: Icon(Icons.record_voice_over),
                ),
          isWriting
              ? Container()
              : GestureDetector(
                  onTap: () {},
                  // pickImage(ImageSource.camera),
                  child: Icon(Icons.camera_alt),
                ),
          isWriting
              ? Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(shape: BoxShape.circle),
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
}
