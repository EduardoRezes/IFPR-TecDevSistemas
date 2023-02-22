import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj_api_cep/models/endereco_model.dart';
import 'package:proj_api_cep/repositories/cep_repository.dart';
import 'package:proj_api_cep/repositories/cep_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CepRepository cepRepository = CepRepositoryImpl();
  EnderecoModel? enderecoModel;

  /**
   * Para recuperar um dado editado, precisa de um TextEditingController
   */
  final TextEditingController _cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API CEP'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        //key: formkey,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Digite o CEP',
              ),
              onChanged: (value) async {
                enderecoModel = await cepRepository.getCep(value);
                setState(() {});
              },
            ),
            const SizedBox(height: 20),
            Text('CEP: ${enderecoModel?.cep ?? ''}'),
            Text('Logradouro: ${enderecoModel?.logradouro ?? ''}'),
            Text('Localidade: ${enderecoModel?.localidade ?? ''}'),
            Text('UF: ${enderecoModel?.uf ?? ''}'),
            Text('Bairro: ${enderecoModel?.bairro ?? ''}'),
            Text('Complemento: ${enderecoModel?.complemento ?? ''}'),
          ],
        ),
      ),
    );
  }
}
