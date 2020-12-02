class ShoppingModel{
  List<_ShoppingData> _results= [];
  ShoppingModel.fromJson(List<dynamic> parsedJson){
    List<_ShoppingData> temp = [];
    for(int i = 0; i < parsedJson.length; i++){
      _ShoppingData result = _ShoppingData(parsedJson[i]);
      temp.add(result);
    }
    _results = temp;
  }
  List<_ShoppingData> get results => _results;
}


class _ShoppingData{
  int _announcementId;
  String _announcementName;
  String _pictureIconPath;
  int _startdate;

  _ShoppingData(results){
    _announcementId = results['announcementId'];
    _announcementName = results['announcementName'];
    _pictureIconPath = results['pictureIconPath'];
    _startdate = results['startdate'];
  }

  int get announcementId => _announcementId;
  String get announcementName => _announcementName;
  String get pictureIconPath => _pictureIconPath;
  int get startdate => _startdate;
}