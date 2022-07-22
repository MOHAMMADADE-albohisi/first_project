import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // shadowColor: Colors.yellow, // للتحكم في لون الضل
          iconTheme: IconThemeData(color: Colors.blue),
          // actionsIconTheme: IconThemeData(color: Colors.blue), // للتحكم بلون الايقونات الموجودة في الاكشن
          title: const Text(
            'First app elancer',
            style: TextStyle(color: Colors.blue, fontFamily: 'Splash'),
          ),
          // centerTitle: true, // اجباري اي نظام تشغيل يجعل الكلام في  المنتصف
          // centerTitle: Platform.isIOS ? false : true,// شرط اذا كان نظام التشغيل IOS جعل الجمل فلمنتصف
          backgroundColor: Colors.transparent,
          elevation: 0,
          // titleSpacing: 0,
          // leadingWidth: 0,
          /*********************************************************************/
          // leading: GestureDetector(
          //   onTap: () {
          //     print('GestureDetector 1');
          //   },
          //   child: Icon(Icons.arrow_back_ios),
          // ),
          /*********************************************************************/
          // leading: InkWell(
          //   child: Icon(Icons.arrow_back_ios),
          //   onTap: () {
          //     print('InkWell 2');
          //   },
          // ),
          /********************************************************************/
          leading: IconButton(
            onPressed: () => print('IconButton3'),
            icon: const Icon(
              Icons.arrow_back_ios,
              // color: Colors.black87,
              size: 24,
            ),
          ),
          /*********************************************************************/
          actions: [
            IconButton(
              onPressed: () {
                print('Logout');
              },
              icon: const Icon(
                Icons.logout,
                // color: Colors.black87,
              ),
            ),
            /**********************************************************************/
            PopupMenuButton<String>(
                onSelected: (String mohammadvalue) {
                  print('Value : $mohammadvalue');
                },
                onCanceled: () {
                  print('لم يتم الضغط على اي شيئ');
                },
                // elevation: 50, // قوة الضل الناتجة عن القائمة المحتوية للعناصر
                // enabled: false, //توقيف قائمة العناصر كلها
                // iconSize: 24, //للتحكم في حجم ايقونة القائمة
                // padding: EdgeInsets.only(left: 20), // للتحكم في تحرك البوتن الخاص بلمنيو الى اعلى او اسفل او يمين او يسار
                icon: Icon(Icons.menu),
                tooltip: 'menu',
                // عند الضغط على العنصر ضغطة مطولة يطهر اسم العنصر
                offset: Offset(0, 55),
                //عشان لما افتح القائمة تعت العناصر ما تغطي عليها
                color: Colors.blueAccent.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.black87,
                    width: 1,
                  ),
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      enabled: true,
                      //توقيف العنصر
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      child: Text('register New User '),
                      value: 'register New User',
                    ),

                    //يمنع منعا باتا استخدامPopupMenuDivider  بين العناصر في حالة لم ين الPopupMenuButton معرف النوع ما (String or int)
                    PopupMenuDivider(),
                    // وضع خط بين عناصر القائمة

                    const PopupMenuItem(
                      enabled: true,
                      //توقيف العنصر
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      child: Text('new file'),
                      value: 'new file',
                    ),

                    PopupMenuDivider(),

                    const PopupMenuItem(
                      enabled: true,
                      //توقيف العنصر
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      child: Text('info'),
                      value: 'info',
                    ),

                    PopupMenuDivider(),
                    const PopupMenuItem(
                      enabled: true,
                      //توقيف العنصر
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Logout'),
                      value: 'Logout',
                    ),
                  ];
                }),
          ],

          /********************************************************************/
        ),
        body: Stack(
          children: [
            // Image(
            //   height: double.infinity,
            //   image: NetworkImage(
            //     'https://thumbs.dreamstime.com/b/tile-floor-brick-wall-background-lights-night-hd-image-large-resolution-can-be-used-as-desktop-wallpaper-real-zise-184215885.jpg'
            //   ),
            //   fit: BoxFit.cover,
            // ),
            /********************************************************************/
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              // تستخدم لتغبيش الصور
              child: Image.network(
                // 'https://thumbs.dreamstime.com/b/tile-floor-brick-wall-background-lights-night-hd-image-large-resolution-can-be-used-as-desktop-wallpaper-real-zise-184215885.jpg',
                'https://static3.depositphotos.com/1000747/226/v/600/depositphotos_2268102-stock-illustration-colorful-splash-design.jpg',
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            /*****************************************************************/
            //اضافة صورة من ملفات الجهاز
            // ImageFiltered(
            //   imageFilter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
            //   child: Image.asset(
            //     'images/images_2.jpg',
            //     height: double.infinity,
            //     fit: BoxFit.fitWidth,
            //   ),
            // ),

            SafeArea(
              child: Center(
                child: Text(
                  'الحب سماء لا تمطر غير الأحلام',
                  style: TextStyle(
                    fontFamily: 'Gulzar',
                    // نوع الخط
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,

                    color: Colors.blue.shade700,
                    // color: Colors.yellow[700],
                    // color: Colors.redAccent,
                    fontSize: 40,
                    // fontWeight: FontWeight.w900,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: null,
                    wordSpacing: 3,
                    // backgroundColor: Colors.white10,
                    // decoration: TextDecoration.underline,
                    // decorationColor: Colors.black,
                    // decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
              ),
            ),
            /********************************************************************/
            // انشاء نص في اسفل ومنتصف الشاشة اجبارب
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text(
            //       'eLancer - UCASTI',
            //       style: TextStyle(
            //         fontFamily: 'Gulzar',
            //         color: Colors.black87,
            //       ),
            //     ),
            //   ),
            // )
            /********************************************************************/
            // انشاء نص في الشاشة والتحكم بيه
            const Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Text(
                'eLancer - UCASTI',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
