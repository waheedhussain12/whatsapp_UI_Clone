import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const  Text('Settings'),

        ),
        body: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const   SizedBox(
                      width: 15,
                    ),
                    const   CircleAvatar(
                      backgroundImage: AssetImage('image/pro.jpg'),
                      radius: 40,
                    ),
                    const    SizedBox(
                      width: 10,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Text('Waheed Leghari',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.normal
                        ),),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Rule #1 Fuck What They Think',style: TextStyle(
                            fontSize: 13,fontWeight: FontWeight.normal
                        ),),
                      ],
                    ),
                    const   SizedBox(
                      width: 50,
                    ),
                    const  Icon(Icons.qr_code),


                  ],
                ),
              ),
              const  ListTile(
              leading: Icon(Icons.key_off),
              title: Text('Account'),
              subtitle: Text('Privacy,security,change number'),

            ),
              const    ListTile(
                leading: Icon(Icons.chat_sharp),
                title: Text('Chats'),
                subtitle: Text('Theme,wallpapers,chat history'),

              ),
              const  ListTile(
                leading: Icon(Icons.notification_add_rounded),
                title: Text('Notifications'),
                subtitle: Text('Message,group & call tones'),

              ),
              const   ListTile(
                leading: Icon(Icons.storage),
                title: Text('Storage and data'),
                subtitle: Text('Network usage, auto-download'),

              ),
              const   ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
                subtitle: Text('help center, contact us, privacy policy'),

              ),
              const   ListTile(
                leading: Icon(Icons.insert_invitation_outlined),
                title: Text('Invite a friend'),
              ),
              const    SizedBox(
                 height: 50,
               ),
              const     Center(child:
               Text('from')),
              const    SizedBox(
                height: 3,
              ),
              const   Center(child:

              Text('Meta',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15
              ),)),
            ],
          ),
        ),
      ),
    );
  }
}
