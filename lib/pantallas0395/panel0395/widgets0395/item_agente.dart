import 'package:flutter/material.dart';

class Itemagente extends StatelessWidget {
  const Itemagente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://raw.githubusercontent.com/NevarezOrtegaEdna/Img_iOS/main/agus.png'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Nuestros Agentes Inmobiliarios",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: const Color(0xfff3c221),
                      size: 18,
                    )))
      ]),
    );
  }
}
