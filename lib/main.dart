import 'package:flutter/material.dart';

void main() => runApp(EasychargeApp());

class EasychargeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaDeClientes(),
      ),
    );
  }
}

class ListaDeClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Clientes'),
      ),
      body: Column(
        children: [
          ItemCliente(Cliente('José Roberto', 'CPF: 031.845.201-45')),
          ItemCliente(Cliente('Claudia Silva', 'CPF: 090.651.414-21')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ItemCliente extends StatelessWidget {
  final Cliente cliente;

  ItemCliente(this.cliente);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.people),
        title: Text(cliente.nome),
        subtitle: Text(cliente.cpf),
      ),
    );
  }
}

class Cliente {
  final String nome;
  final String cpf;

  Cliente(this.nome, this.cpf);
}