import 'package:flutter/material.dart';
import 'package:whatsapp_uii/setting.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chat'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Call'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context)=> const Settings())
                            );
                          },
                          child:const Text('Settings',style: TextStyle(
                            color: Colors.black
                          ),),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('image/pro.jpg'),
                  ),
                  title: Text('waheed hussain'),
                  subtitle: Text('Where is my dog'),
                  trailing: Text('2:34 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3)),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('image/pro.jpg'),
                    ),
                  ),
                  title: const Text('waheed hussain'),
                  subtitle: const Text('2:34 PM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                      backgroundImage: AssetImage('image/pro.jpg')),
                  title: const Text('waheed hussain'),
                  subtitle: Text(index / 2 == 0
                      ? 'you missed audio call'
                      : 'call time is 2:39 PM'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
