class PoojariModel{
  List<_PoojariesData> _results = [];
  PoojariModel.fromJson(List<dynamic> parsedJson){
    List<_PoojariesData> temp = [];
    for(int i=0; i < parsedJson.length; i++){
      _PoojariesData result = _PoojariesData(parsedJson[i]);
      temp.add(result);
    }
    _results = temp;
  }
  List<_PoojariesData> get results => _results;
}


class _PoojariesData{
  int _userId;
  int _id;
  String _title;
  String _body;

  _PoojariesData(results){
    _userId = results['userId'];
    _id = results['id'];
    _title = results['title'];
    _body = results['body'];
  }

  int get id => _id;
  int get userId => _userId;
  String get title => _title;
  String get body => _body;
}