class TemplesModel{
  List<_TemplesData> _results= [];
  TemplesModel.fromJson(List<dynamic> parsedJson){
    List<_TemplesData> temp = [];
    for(int i = 0; i < parsedJson.length; i++){
      _TemplesData result = _TemplesData(parsedJson[i]);
      temp.add(result);
    }
    _results = temp;
  }
  List<_TemplesData> get results => _results;
}


class _TemplesData{
  int _templeId;
  String _templeName;
  String _templeDescription;
  String _templeAddress;
  String _imagePath1;
  String _annadhanamTimings;

  _TemplesData(results){
    _templeId = results['templeId'];
    _templeName = results['templeName'];
    _templeDescription = results['templeDescription'];
    _templeAddress = results['templeAddress'];
    _imagePath1 = results['imagePath1'];
    _annadhanamTimings = results['annadhanamTimings'];
  }

  int get templeId => _templeId;
  String get templeName => _templeName;
  String get templeDescription => _templeDescription;
  String get templeAddress => _templeAddress;
  String get imagePath1 => _imagePath1;
  String get annadhanamTimings => _annadhanamTimings;
}
