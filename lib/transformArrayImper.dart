List<dynamic> transformArrayImperative(List<int> numbers, Function(int) transform) {
  List<int> transformedArray = [];
  for (int number in numbers) {
    transformedArray.addAll(transform(number));
  }
  return transformedArray;
}

void main() {
 
  print(transformArrayImperative([1,2,3,4],(item){
    return [item];
  }));
  
}