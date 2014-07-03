import "dart:html";
import "package:polymer/polymer.dart";

@CustomTag("tutorial-topic")
class TutorialTopic extends PolymerElement  {
  
  @observable
  var topic = {
               "_id"         : 123,

               "name"        : "JVM",

               "tags"        : [
                               "jvm",
                               "java virtual machine"
                              ],
                              
               "content"     : 
"""
<h1>JVM</h1>
<hr>
<p>
  The JVM(JAVA Virtual Machine) is the platform upon which the <b>JAVA</b> based applications run.
</p>
<p>
  JVM is a <span class='highlight bold'>process virtual machine</span>.
</p>

<img src='engine/images/Untitled.png'></img>

<h2>Why On Earth The JVM Was Created?</h2>
<hr>
<dl>

  <dt>A Variety Of Different Platforms Was The Real Pain...</dt>
  <dd>
By the time JAVA was created there were various different platforms for the consumer electronics devices.

  </dd>

  <dt>Ability To <span class='bold italic highlight'>Write Once Run Every Where</span> Was Badly Needed</dt>
  <dd>
     ...
  </dd>
</dl>
<h2>JVM Languages</h2>
<hr>
"""
             };
  
//Default Constructor
  TutorialTopic.created() : super.created(){
    print("tutorial-topic instance created");
    $['content'].innerHtml = topic['content'];
  }
  
  @override
  void attached(){
    super.attached();
    print("Attached");
  }
}