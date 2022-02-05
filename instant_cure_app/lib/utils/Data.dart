class Data {
  List<List<String>> data = [
    [
      "Running Nose",
      "Low Sevirity",
      "Do not take medication for a day or two, let the nose run"
    ],
    [
      "Acidity ",
      "Medium Sevirity",
      "Drink 2-3 glass of warm water and vomet it down"
    ],
    [
      "Head Ace",
      "Medium to Low Sevirity",
      "Apply zendubam on forehead and eyes & let all the water come out of eyes",
    ],
    [
      "Cough/ Throat",
      "Medium to Low Sevirity",
      '''  1.Hold the salty water in throat and do that thing 
        2.Take waff (termeric and water boiled)      
        3.Hold lavang in mouth''',
    ],
  ];

  List<List<String>> getData() {
    return data;
  }

  int getLenght() {
    return data.length;
  }

  void setData(List<String> addthis, index) {
    if (index <= data.length) {
      data.add(addthis);
    }
  }
}
