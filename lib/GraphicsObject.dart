

import 'package:everstream/GraphicsInterface.dart';

abstract class GraphicsObject{
  List<GraphicsInterface> listObservers=[];
  addObserver(GraphicsInterface obj){
    listObservers.add(obj);
  }
  delObserver(GraphicsInterface obj){
    listObservers.remove(obj);
  }
  notify(){
    listObservers.forEach((element) {element.update(this);});
  }
}