
import 'package:get/get.dart';
import 'package:love_calculator/model/love_model.dart';

class Dataget extends GetxController {

  var myFetchdata=Lovecalculator();


  updateData(value) {
  

    myFetchdata = value;
  
    update();
  }

}
