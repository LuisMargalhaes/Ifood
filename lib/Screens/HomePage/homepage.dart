import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/menuInferior.dart';
import 'package:ifood/Screens/Busca/search_screen.dart';
import 'package:ifood/Screens/Profile/profile_screen.dart';
import 'package:ifood/Screens/TelaInicio/telainicio.dart';
import 'package:ifood/TeladePedido/telapedido.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  // Ir para o próximo item
  void nextStation(int posicao) {
    setState(() {
      itemSelecionado = posicao;
    });
  }

  // Lista de páginas
  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    Pedido(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }

  // Função para criar o BottomNavigationBar
  BottomNavigationBar bottomNavigationBar(
      int selectedIndex, void Function(int) onTap) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: 'Busca',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          label: 'Pedidos',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: 'Perfil',
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
