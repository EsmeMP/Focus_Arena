// stales
import 'package:flutter/material.dart';
import 'package:prueba_2/presentation/widgets/chat/her_message_bubble.dart';
import 'package:prueba_2/presentation/widgets/chat/my_message_bubble.dart';
import 'package:prueba_2/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(9.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Ftse3.explicit.bing.net%2Fth%2Fid%2FOIP.qXW_WmI0HONQUyQpyxVjpwHaFj%3Fr%3D0%26cb%3Dthfc1falcon2%26pid%3DApi&sp=1782236161T59387d644a5ceca9481f7de4c93eed70e793ccc19420fcf96a8c001ae9fc6c4f'
            ),
          ),
        ),
        title: const Text('Rigby - Un show más'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                })),
            // caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
