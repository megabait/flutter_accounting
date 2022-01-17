import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(
       MaterialApp(
          home: Scaffold(
              appBar: AppBar(title: const Text("Megabait")),
              body: MyNewClass()
          )
      )
  );
}

class MyNewClass extends StatelessWidget{
  const MyNewClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
      return Container(
        child: Column (
          children: [
            Container(
              height: 120,
              color: Colors.grey,
              margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image.network("https://megabait.kz/root_user/my/img/megaCorelMG.png"),
                    Expanded(child: Column(
                      children: const [
                        Text("Заголовок"),
                        Expanded(child:
                          Text("Это текс описания Это текс описания Это текс описания Это текс описания")
                        )
                      ],
                    )),
                    MyFavorit()
                  ],)
            ),
            Container(
                height: 120,
                color: Colors.grey,
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image.network("https://megabait.kz/root_user/my/img/megaCorelMG.png"),
                    Expanded(child: Column(
                      children: const [
                        Text("Заголовок"),
                        Expanded(child:
                        Text("Это текс описания Это текс описания Это текс описания Это текс описания")
                        )
                      ],
                    )),
                    MyFavorit()
                  ],)
            ),
            Container(
                height: 120,
                color: Colors.grey,
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Image.network("https://megabait.kz/root_user/my/img/megaCorelMG.png"),
                    Expanded(child: Column(
                      children: const [
                        Text("Заголовок"),
                        Expanded(child:
                        Text("Это текс описания Это текс описания Это текс описания Это текс описания")
                        )
                      ],
                    )),
                    MyFavorit()
                  ],)
            ),
          ],
        ),
      );
  }
}

//Виджет favorit
class MyFavorit extends StatelessWidget
{
  const MyFavorit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 100,
      color: Colors.red,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          const Text("Это Фаворит"),
          IconButton(onPressed: (){}, icon: const Icon(Icons.star))
        ],
      ),
    );
  }
}
