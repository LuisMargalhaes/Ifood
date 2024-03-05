import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/slide.dart';
import 'package:ifood/CustomWidgets/styles.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  // Função para gerar os cards de produtos
  Widget buildProductCard(String title, String price, String imageAsset) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'R\$ $price',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(190, 80, Colors.deepPurple, "Pet", "assets/pet.png"),
                card(190, 80, Colors.deepPurple, "Mercado",
                    "assets/mercado.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, Colors.deepPurple[50], "Farmácia",
                    "assets/farmacia.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Bebidas",
                    "assets/bebidas.png"),
                const SizedBox(width: 10),
                cardDois(90, 100, Colors.deepPurple[50], "Sucos",
                    "assets/sucos.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Pizza",
                    "assets/pizza.png"),
              ],
            ),
          ),
          Slide(),
          // Cards de Produtos
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Produtos em Destaque',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildProductCard(
                    'Feijoada Nordestina', '29,90', 'assets/feijoada.png'),
                buildProductCard(
                    'Macarronada Bolonhesa', '25,90', 'assets/macarrao.png'),
                buildProductCard('X-Salada', '15,80', 'assets/sanduiccher.png'),
                // Adicione mais produtos conforme necessário
              ],
            ),
          ),
          Container(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildProductCard(
                    'Banoffe Caseira', '29,90', 'assets/Banoffe.png'),
                buildProductCard(
                    'Combos de Lanche', '49,50', 'assets/combos.jpg'),
                buildProductCard(
                    'Filé de Tilápia', '37,90', 'assets/prato.png'),

                // Adicione mais produtos conforme necessário
              ],
            ),
          ),
        ],
      ),
    );
  }
}
