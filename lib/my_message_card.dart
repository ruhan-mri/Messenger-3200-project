import 'package:flutter/material.dart';
import 'package:messenger/app_colors.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      // Align Widget is quite flexible and can change its size according to the size of its child.
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        // ConstrainedBox to add size constraints to its child widgets.
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45, // // MediaQuery provides a higher-level view of the current app’s screen size
        ),
        child: Card(
          //  Card widget in flutter is a sheet of Material used to represent all the similar information in a single block.
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Stack(
            // The stack is a widget in Flutter that contains a list of widgets and positions them on top of the other.
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
