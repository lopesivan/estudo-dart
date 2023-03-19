void main() {
  List<List<int>> matriz1 = [    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> matriz2 = [    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
  ];

  int m1_linhas = matriz1.length;
  int m1_colunas = matriz1[0].length;
  int m2_linhas = matriz2.length;
  int m2_colunas = matriz2[0].length;

  if (m1_colunas != m2_linhas) {
    print("Erro: o número de colunas da matriz 1 não é igual ao número de linhas da matriz 2.");
    return;
  }

  List<List<int>> resultado = List.generate(m1_linhas, (_) => List.filled(m2_colunas, 0));

  for (int i = 0; i < m1_linhas; i++) {
    for (int j = 0; j < m2_colunas; j++) {
      for (int k = 0; k < m1_colunas; k++) {
        resultado[i][j] += matriz1[i][k] * matriz2[k][j];
      }
    }
  }

  print("Matriz resultante:");
  for (int i = 0; i < m1_linhas; i++) {
    print(resultado[i]);
  }
}

