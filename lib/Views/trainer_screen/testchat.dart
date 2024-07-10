import 'package:flutter/material.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:get/get.dart';
import 'cutommessage_type.dart';

class CustomMessage {
  final String messageText;
  final bool isSent;

  CustomMessage({
    required this.messageText,
    required this.isSent,
  });
}

class TestChat extends StatefulWidget {
  const TestChat({Key? key}) : super(key: key);

  @override
  _TestChatState createState() => _TestChatState();
}

class _TestChatState extends State<TestChat> {
  ScrollController scrollController = ScrollController();
  final focusNode = FocusNode();

  List<CustomMessage> messages = [
    CustomMessage(
      messageText: 'Hello',
      isSent: true
    ),
    CustomMessage(
      messageText: 'Hi David I saw your work',
      isSent: false,
    ),
    CustomMessage(
      messageText: 'Thank you!',
    isSent: true,),
    CustomMessage(
      messageText: 'Are you free for workout ?',
      isSent: false,
    ),
    CustomMessage(
      messageText: 'We need some urgent Training ',
      isSent: false,
    ),
    CustomMessage(
      messageText: 'Maybe for a next time!',
      isSent: true,
    ),
  ];
  final TextEditingController _messageController = TextEditingController();
  @override

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }


  void _sendMessage() {
    final String messageText = _messageController.text.trim();
    if (messageText.isNotEmpty) {
      final newMessage = CustomMessage(
        messageText: messageText,
        isSent: true,
      );

      setState(() {
        messages.add(newMessage);
      });

      _messageController.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leadingWidth: 50,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: const Icon(Icons.arrow_back_ios_new, size: 20),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(appIcon),
            ),
            SizedBox(width: mQ.width * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Link N Lift Trainer',
                  style: style.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  'Online',
                  style: style.copyWith(fontSize: 13),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.info_outline_rounded, size: 35)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.star, color: blueColor, size: 35)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Row(
                  mainAxisAlignment: message.isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: mQ.width * 0.04,
                        vertical: mQ.width * 0.030,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: mQ.width * 0.060,
                        vertical: mQ.width * 0.05,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: mQ.width * 0.70,
                        minWidth: mQ.width * 0.20,
                      ),
                      decoration: BoxDecoration(
                          color: message.isSent ? blueColor : Colors.grey.shade300,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(message.isSent ? 20.0 : 20.0),
                              topRight: Radius.circular(message.isSent ? 0.0 : 20.0),
                              bottomLeft: Radius.circular(message.isSent ? 20:0),
                              bottomRight: Radius.circular(message.isSent ? 20:20),
                              )),
                      child: Wrap(
                        verticalDirection: VerticalDirection.down,
                        alignment: WrapAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.only(bottom: mQ.width * 0.005),
                            child: Text(
                              message.messageText,
                              style: style.copyWith(
                                color: message.isSent? whiteColor:Colors.black,
                                fontSize: 15
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 5),
            width: mQ.width,
            child: Row(
              children: [
                CustomTypeMessageField(
                  focusNode: focusNode,
                  controller: _messageController,
                ),
                SizedBox(height: mQ.height * 0.05),
                /// Send Message Button
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    onPressed:_sendMessage,
                    icon: const Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
