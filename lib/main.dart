import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Привет - я работаю на ios)))) dfdfg
void main() {
  runApp(
       MaterialApp(
          home: Scaffold(
              appBar: AppBar(title: const Text("Megabait")),
              body: ListView(
                children: const <Widget>[
                  MyNewClass(),
                  /*SizedBox(
                      height: 200,
                      child: ListWidget()
                  )*/
                  //ListWidget()
                ],
              )
          )
      )
  );
}


class ListWidget extends StatelessWidget
{
  const ListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
      return Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: 300, itemBuilder: (context, index)
              {
                return Text("Test: $index");
              })
      );
  }
}

class MyNewClass extends StatelessWidget{
  const MyNewClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
      return Column (
        children: [
          Container(
            height: 120,
            color: Colors.grey,
            margin: const EdgeInsets.all(5),
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
                MyContainer()
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
                  MyContainer()
                ],)
          ),
          Container(
              height: 120,
              color: Colors.grey,
              margin: const EdgeInsets.all(5),
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
                  const MyContainer()
                ],)
          ),
        ],
      );
  }
}
//Виджет Контейнер
class MyContainer extends StatefulWidget
{
  final bool _like = false;

  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => MyFavorit(_like);
}

//Виджет favorit
class MyFavorit extends State<MyContainer>
{
  bool _like;
  //Конструктор
  MyFavorit(this._like);
  //Метод
  void pressBtn()
  {
    setState(() {
      if(_like == false) {
        _like = true;
      } else {
        _like = false;
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 100,
      color: Colors.red,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text("Это Фаворит"),
          IconButton(onPressed: pressBtn,
              icon: _like == true ? const Icon(Icons.star ) : const Icon(Icons.star_border )
          ),//.
          Text("Итог $_like")
        ],
      ),
    );
  }
}
