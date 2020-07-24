import 'package:mobx/mobx.dart';
part 'reminding_vm.g.dart';

class RemindingViewModel = RemindingViewBase with _$RemindingViewModel;


abstract class RemindingViewBase with Store {
  @observable
  String title;
  @observable
  String date;
  @observable
  String time;
  @observable
  String path;
  @observable
  String onemDerecesi;
  @observable
  bool yapildiMi;

  //Reminding( {@required this.title,this.date,this.time,this.path, this.onemDerecesi, this.yapildiMi=false});
}