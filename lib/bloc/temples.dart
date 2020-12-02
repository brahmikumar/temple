import 'package:rxdart/rxdart.dart';
import '../provider/temples.dart';
import '../models/temples.dart';

class TemplesBloc{
  final templesProvider = new TemplesProvider();
  final _templesContoller = PublishSubject<TemplesModel>();

  Stream<TemplesModel> get allTemplesList => _templesContoller.stream;

  fetchAllTemplesList() async{
    TemplesModel templesModel = await templesProvider.fetchTemplesList();
    _templesContoller.sink.add(templesModel);
  }

  dispose(){
    _templesContoller.close();
  }
}

final templesBloc = TemplesBloc();