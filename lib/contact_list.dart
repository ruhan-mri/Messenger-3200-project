import 'package:flutter/material.dart';
import 'package:messenger/app_colors.dart';
import 'package:messenger/info.dart';
import 'package:messenger/mobile_chat.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                // InkWell class in Flutter is a rectangular area in Flutter of a material that responds to touch in an application.
                onTap: () {
                  // go to moblie screen after click
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: textColor,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                    //AppBar's layout mainly comprises three components: leading , title , and actions
                    //leading is placed at the leftmost position of the AppBar; title and actions appear to its right.
                    leading: CircleAvatar(
                      //CircleAvatar widget comes built-in
                      backgroundImage: NetworkImage(
                        // NetworkImage, To work with images from a URL
                        info[index]['profilePic'].toString(),
                      ),
                    ),

                    // trailing A widget to display after the title.
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              ),
            ],
          );
        },
      ),
    );
  }
}
