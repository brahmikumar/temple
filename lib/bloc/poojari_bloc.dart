import '../models/poojari_model.dart';
import '../provider/poojari_provider.dart';
import 'package:rxdart/rxdart.dart';

class PoojariBolc{
  final poojariNetworkProvider = PoojariNetworkProvider();
  final _poojariController = PublishSubject<PoojariModel>();

  Stream<PoojariModel> get allPoojaries => _poojariController.stream;

  fetchAllPoojaries() async{
       PoojariModel poojariModel = await poojariNetworkProvider.fetchPoojariesList();
    _poojariController.sink.add(poojariModel);
  }

  dispose() {
    _poojariController.close();
  }
}

final bloc = PoojariBolc();

// https://www.pesuacademy.com/MAcademy/mobile/dispatcher?action=20&mode=5&minLimit=0&limit=10&appId=1