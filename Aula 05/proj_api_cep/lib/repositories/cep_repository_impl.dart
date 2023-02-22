import 'package:dio/dio.dart';

import '../models/endereco_model.dart';
import '../repositories/cep_repository.dart';

class CepRepositoryImpl implements CepRepository {

  @override
  Future<EnderecoModel> getCep(String cep) async {
    try {
      final response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
      return EnderecoModel.fromMap(response.data);
    } catch (e) {
      throw Exception('Erro ao buscar o CEP');
    }
          
  }
}