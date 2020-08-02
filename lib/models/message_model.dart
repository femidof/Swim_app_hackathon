

import 'package:swim_app_hack/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({this.sender, this.time, this.text, this.unread});
}


//HERE WE can add dummy users for just a group chat just in case


final User currentUser = User(
  id: 0,
  name: "Me",
  imageUrl: null,
);

final User greg = User(
  id: 1,
  name: "Greg",
  imageUrl: 'assets/images/profile_icons/greg.jpg',
);

final User olivia = User(
  id: 2,
  name: "Olivia",
  imageUrl: "assets/images/profile_icons/olivia.jpg",
);

final User sophia = User(
  id: 3,
  name: 'Sophia',
  imageUrl: 'assets/images/profile_icons/sophia.jpg',
);

List<User> group = [currentUser, olivia, greg]; 


List<Message> section_chats = [
  Message(sender: greg, time: '5:30pm', text:"LOREM IPSUM SECTION"),
  Message(sender: olivia, time: '6:30pm', text:"LOREM IPSUM SECTION 2"),
  Message(sender: currentUser, time: '7:30pm', text:"LOREM IPSUM asdsadas sdbajhbasjkhd asjda jhb asjadh SECTION 3"),
  Message(sender: sophia, time: '8:30pm', text:"LOREM IPSUM SECTION 4"),
  Message(sender: sophia, time: '9:30pm', text:"LOREM IPSUM SECTION 5"),
  Message(sender: sophia, time: '10:30pm', text:"LOREM IPSUM SECTION 6"),
];


List<Message> group_chats = [

  Message(sender: greg, time: '5:30pm', text:"LOREM IPSUM GROUP"),
  Message(sender: olivia, time: '6:30pm', text:"LOREM IPSUM GROUP 2"),
  Message(sender: currentUser, time: '7:30pm', text:"LOREM IPSUM GROUP 3"),
  Message(sender: sophia, time: '8:30pm', text:"LOREM IPSUM GROUP 4"),


];


// List<Message> chat = [];