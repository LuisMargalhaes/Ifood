import 'package:flutter/material.dart';

class Pedido extends StatefulWidget {
  const Pedido({Key? key}) : super(key: key);

  @override
  _PedidoState createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {
  final _pedido = {
    'id': '12345',
    'dataHora': '20/05/2023 14:30',
    'enderecoEntrega': 'Rua ABC, 123 - Centro',
    'valorTotal': 'R\$ 50,00',
    'itens': [
      {'nome': 'X-Burger', 'quantidade': 1, 'valorUnitario': 'R\$ 10,00'},
      {'nome': 'Coca-Cola', 'quantidade': 2, 'valorUnitario': 'R\$ 5,00'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Pedido'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pedido #${_pedido['id']}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Data e Hora: ${_pedido['dataHora']}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Text(
                  'Endereço de entrega:',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  _pedido['enderecoEntrega']?.toString() ??
                      'Endereço não disponível',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Text(
                  'Valor total: ${_pedido['valorTotal']}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Itens:',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                for (var item in _pedido['itens'] as List<Map<String, dynamic>>)
                  ListTile(
                    title: Text(item['nome'] ?? ''),
                    subtitle: Text(
                      'Quantidade: ${item['quantidade']}, Valor Unitário: ${item['valorUnitario']}',
                    ),
                  ),
                Spacer(), // Add Spacer to center the button vertically
                Center(
                  // Center the button horizontally
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your payment logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set button color to red
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 16.0),
                    ),
                    child: Text(
                      'Pagar',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pedido(),
    ),
  );
}
