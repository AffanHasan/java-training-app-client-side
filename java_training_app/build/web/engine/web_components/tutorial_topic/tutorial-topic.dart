import "dart:html";
import "package:polymer/polymer.dart";

@CustomTag("tutorial-topic")
class TutorialTopic extends PolymerElement with ChangeNotifier   {
  
  @reflectable @observable
  dynamic get topic => __$topic; dynamic __$topic = {
               "_id"         : 123,//*

               "name"        : "JVM",//* Name should be in the form that it should be search friendly & can be indexed

               "tags"        : [//* Small cased
                               "jvm",
                               "java virtual machine"
                              ],

               "intorduction": {                 
                                 "definition" : "The JVM(JAVA Virtual Machine) is the platform upon which the <b>JAVA</b> based applications run.",//*
                                 "content"    : [
                                                  
                                                ]
                               },

               "subTopics"   : [

                                 {
                                   "heading" : "JVM Composition",
  
                                   "JIT"     : ""
                                 },
  
                                 {
                                   "heading" : "JVM Languages",
  
                                   "Scala"   : ""
                                 }
                       
                               ]
             }; @reflectable set topic(dynamic value) { __$topic = notifyPropertyChange(#topic, __$topic, value); }
  
//Default Constructor
  TutorialTopic.created() : super.created(){
    print("tutorial-topic instance created");
  }  
}