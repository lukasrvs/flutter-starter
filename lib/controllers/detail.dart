import 'package:flutter/material.dart';
import 'package:todo_app/models/detail.dart'; // Importe o modelo Detail

class DetailController {
  List<Detail> details = []; // Lista para armazenar os detalhes

  // Método para adicionar um novo detalhe
  void addDetail(Detail detail) {
    details.add(detail);
  }

  // Método para atualizar um detalhe existente
  void updateDetail(int index, Detail updatedDetail) {
    if (index >= 0 && index < details.length) {
      details[index] = updatedDetail;
    }
  }

  // Método para excluir um detalhe
  void deleteDetail(int index) {
    if (index >= 0 && index < details.length) {
      details.removeAt(index);
    }
  }

  // Método para buscar detalhes associados a uma tarefa específica (por taskId)
  List<Detail> getDetailsByTaskId(int taskId) {
    return details.where((detail) => detail.taskId == taskId).toList();
  }

  // Método para buscar um detalhe específico por índice
  Detail getDetailByIndex(int index) {
    if (index >= 0 && index < details.length) {
      return details[index];
    } else {
      return Detail(); // Retorna um detalhe vazio se o índice estiver fora dos limites
    }
  }
}