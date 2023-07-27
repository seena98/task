List<dynamic> flattenList(List<dynamic> nestedList) {
  List<dynamic> flattenedList = [];
  for (var item in nestedList) {
    if (item is List<dynamic>) {
      flattenedList.addAll(flattenList(item));
    } else {
      flattenedList.add(item);
    }
  }
  return flattenedList;
}

void main() {
  List<dynamic> nestedList = [4, [[5], [6, [7], 8], 9, 10]];
  List<dynamic> flattenedList = flattenList(nestedList);
  print(flattenedList);
}