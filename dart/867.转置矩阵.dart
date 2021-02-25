class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
    var result = List.generate(
      matrix[0].length,
      (i) => List.generate(matrix.length, (i) => 0),
    );

    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[i].length; j++) {
        result[j][i] = matrix[i][j];
      }
    }

    return result;
  }
}

main() {
  print(Solution().transpose([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]));
}
