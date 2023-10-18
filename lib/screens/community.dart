import 'package:flutter/material.dart';

class Message {
  final String sender;
  final String content;

  Message({required this.sender, required this.content});
}

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Message> messages = [
      Message(sender: 'Alice', content: 'Hello!'),
      Message(sender: 'Bob', content: 'Hi there!'),
      Message(sender: 'Alice', content: 'How are you?'),
      // Add more messages as needed
    ];

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pet_profile_bg.png'), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Group Chat'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  Message message = messages[index];
                  return ListTile(
                    title: Text('${message.sender}: ${message.content}'),
                  );
                },
              ),
            ),
            _buildMessageInputField(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Implement sending message functionality
            },
          ),
        ],
      ),
    );
  }
}
