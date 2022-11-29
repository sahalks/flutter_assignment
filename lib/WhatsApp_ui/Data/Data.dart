import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllData {
  List chats = [
    [
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Russo',
      'Hey Buddy!',
      '12:00'
    ],
    [
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80',
      'Samuel',
      'Help me',
      '17:38'
    ],
    [
      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      'Franco',
      'Meet me!',
      '09:20'
    ],
    [
      'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',
      'Maya Devi',
      'typing...',
      '09:48'
    ],
    [
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Tim Cook',
      'Meeting Today!',
      '08:01'
    ],
    [
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Rookie',
      'Sup!',
      '12:00'
    ],
    [
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80',
      'Sammy',
      'Text me',
      '17:38'
    ],
    [
      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      'Frank',
      'Meet me there.',
      '09:20'
    ],
    [
      'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',
      'Mayavi',
      'Lol',
      '09:48'
    ],
    [
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Timmy',
      'Holiday tomorrow!',
      '08:01'
    ],
  ];

  List recentUpdates = [
    [
      'https://images.unsplash.com/photo-1666098870304-61091dd75634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'Russo',
      '2 minutes ago'
    ],
    [
      'https://images.unsplash.com/photo-1666844550308-9b47df48af49?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
      'Samuel',
      '52 minutes ago'
    ],
    [
      'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Franco',
      '30 minutes ago'
    ],
  ];
  List viewedUpdates = [
    [
      'https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Maya Devi',
      '3h ago'
    ],
    [
      'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Tim Cook',
      '1h ago'
    ],
  ];

  List calls = [
    [
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Russo',
      Icon(
        CupertinoIcons.phone_fill_arrow_down_left,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Incoming',
      'Yesterday'
    ],
    [
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80',
      'Samuel',
      Icon(
        CupertinoIcons.phone_fill_arrow_up_right,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Outgoing',
      'Saturday'
    ],
    [
      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80',
      'Samuel',
      Icon(
        CupertinoIcons.phone_fill,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Missed',
      'Saturday'
    ],
    [
      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
      'Franco',
      Icon(
        CupertinoIcons.video_camera_solid,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Outgoing',
      '13/10/2022'
    ],
    [
      'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',
      'Maya Devi',
      Icon(
        CupertinoIcons.phone_fill_arrow_down_left,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Incoming',
      '19/10/2022'
    ],
    [
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Tim Cook',
      Icon(
        CupertinoIcons.video_camera_solid,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Outgoing',
      '26/10/2022'
    ],
    [
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Tim Cook',
      Icon(
        CupertinoIcons.video_camera_solid,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Missed',
      '26/10/2022'
    ],
    [
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      'Tim Cook',
      Icon(
        CupertinoIcons.video_camera_solid,
        color: Platform.isIOS ? Colors.white70 : Colors.black54,
        size: 17,
      ),
      'Missed',
      '25/10/2022'
    ],
  ];
}