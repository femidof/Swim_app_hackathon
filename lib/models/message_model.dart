import 'package:swim_app_hack/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({this.sender, this.time, this.text, this.unread});
}

//HERE WE can add dummy users for just a group chat just in case

final User currentUser = User(
  id: "0",
  name: "Me",
  imageUrl: null,
);

final User guest1 = User(
  id: "1",
  name: "guest",
  imageUrl: null,
);

final User guest2 = User(
  id: "2",
  name: "guest2",
  imageUrl: null,
);

List<User> group = [currentUser, guest1, guest2];

// List<Message> chat = [];
