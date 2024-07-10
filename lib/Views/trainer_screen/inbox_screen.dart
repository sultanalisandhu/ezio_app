// import 'package:ezio_fitness/constants.dart';
// import 'package:ezio_fitness/utils/image_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'cutommessage_type.dart';
//
//
//
// class InboxScreen extends StatefulWidget {
//   const InboxScreen({super.key,});
//
//   @override
//   State<InboxScreen> createState() => _InboxScreenState();
// }
//
// class _InboxScreenState extends State<InboxScreen> {
//   ScrollController scrollController = ScrollController();
//   final focusNode= FocusNode();
//
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2),
//             () => scrollDown(scrollController: scrollController));
//
//   }
//   void scrollDown({required ScrollController scrollController}) {
//     scrollController.animateTo(scrollController.position.maxScrollExtent,
//         duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
//   }
//
//   @override
//   void dispose() {
//     focusNode.dispose();
//     scrollController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         backgroundColor: Colors.blue.shade100,
//         appBar: AppBar(
//           backgroundColor: whiteColor,
//           leading: GestureDetector(
//             onTap: (){},
//             child: Container(
//               margin: const EdgeInsets.only(left: 10),
//               height: 35,
//               width: 35,
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(color: Colors.grey)
//               ),
//               child: const Icon(Icons.arrow_back_ios_new,size: 20,),
//             ),
//           ),
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const CircleAvatar(
//                 backgroundImage: AssetImage(appIcon),
//               ),
//               SizedBox(width: mQ.width*0.01,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Link N Lift Trainer',
//                     style: style.copyWith(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
//                   ),
//                   Text(
//                     'Online',
//                     style: style.copyWith(fontSize: 13),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           actions: [
//
//             IconButton(onPressed: (){}, icon: const Icon(Icons.info_outline_rounded,size: 35,)),
//             IconButton(onPressed: (){}, icon: Icon(Icons.star,color: blueColor,size: 35,)),
//           ],
//         ),
//         body: Column(
//           children: [
//             Expanded(
//                 child:
//                 ListView.builder(
//                 controller: scrollController,
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Row(
//                     mainAxisAlignment:  MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.symmetric(
//                           horizontal: mQ.width * 0.02,
//                           vertical: mQ.width * 0.020,
//                         ),
//                         padding: EdgeInsets.only(
//
//                           left: mQ.width * 0.025,
//                           right: mQ.width * 0.020,
//                           top: 5,
//                           bottom: mQ.width * 0.010,
//                         ),
//                         constraints: BoxConstraints(
//                           maxWidth: mQ.width * 0.70,
//                           minWidth: mQ.width * 0.20,
//                         ),
//                         decoration: BoxDecoration(
//                             color: const Color(0xffDBECD1),
//                             borderRadius: BorderRadius.circular(8)),
//                         child: Wrap(
//                           verticalDirection: VerticalDirection.down,
//                           alignment: WrapAlignment.end,
//                           children: [
//                             // if (controller.isReplyingMessage != '')
//                             // ReplyMessageWidget(widget.userName, controller),
//
//                             ///Message
//                             Container(
//                               margin: EdgeInsets.zero,
//                               padding: EdgeInsets.only(bottom: mQ.width * 0.005),
//                               child: Text(
//                                 'fghj',
//                                 style: style.copyWith(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                             /// Message Time
//                             Container(
//                               margin: EdgeInsets.only(top: mQ.width * 0.015, right: mQ.width * 0.006, left: kSize.width * 0.010),
//                               child: Text(
//                                 'cvbn',
//                                 style: style.copyWith(color: Colors.grey, fontSize: 8),
//                               ),
//                             ),
//                             /// Message Seen Icon
//                             Container(
//                               margin: EdgeInsets.only(top: mQ.width * 0.012),
//                               child: Icon(
//                                 Icons.done_all,
//                                 size: mQ.width * 0.04,
//                                 color: Colors.blue,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                 ),]
//                   );
//                 })),
//             Container(
//               padding: const EdgeInsets.only(top: 5, bottom: 8, left: 5, right: 5),
//               decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.red, width: 1))),
//               width: mQ.width,
//               child: Row(
//                 children: [
//                   CustomTypeMessageField(
//                     focusNode: focusNode,
//                   ),
//                   SizedBox(height: mQ.height*0.05,),
//                   /// Send Message Button
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.add, color: Colors.white,size: 20,),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         )
//     );
//   }
// }
