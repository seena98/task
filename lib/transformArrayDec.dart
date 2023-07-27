 List<dynamic> transformArrayDeclarative(List<int> numbers, Function(int) transform) {
  return numbers.map(transform).toList();
}

void main() {
 
  print(transformArrayDeclarative([1,2,3,4],(item){
    return [item];
  }));
  
}