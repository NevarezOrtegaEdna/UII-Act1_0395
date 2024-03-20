import 'package:flutter/material.dart';
import 'package:nevarez0395/pantallas0395/panel0395/widgets0395/item_agente.dart';

class PanelPantalla0395 extends StatelessWidget {
  const PanelPantalla0395({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff145184),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/NevarezOrtegaEdna/Img_iOS/main/logoInmobiliaria2.png'),
            ),
          )
        ],
        title: const Text(
          'Inmobiliaria Nevarez0395',
          style: TextStyle(color: Color(0xffffffff)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xff647ea6),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(.12),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Buscar",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Color(0xffffffff)),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffffffff),
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/NevarezOrtegaEdna/Img_iOS/main/casa.jpg'))),
          ),
          ListTile(
            title: const Text("Top Agentes Inmobiliarios"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: const EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemagente()],
          ))
        ],
      ),
    );
  }
}
