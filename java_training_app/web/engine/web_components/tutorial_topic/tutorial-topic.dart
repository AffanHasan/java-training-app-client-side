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
<p>The <span class='bold'>JVM</span> <span class='bold italic'>Java Virtual Machine</span> is an <span class='highlight bold'>application software</span> which forms the platform for the JAVA related technology</p>
<p>The <span class='bold'>JVM</span> is <span class='bold'>responsible for</span> the <span class='highlight bold'><span class='bold'>hardware</span> & <span class='bold'>operating system</span> independence</span> of the <span class='bold'>JAVA<span> programming language</p>
<p>The <span class='bold'>JVM</span> is an <span class='highlight bold'>abstract computing machine</span></p>
<h1>Why Do I Need JVM...? WHY OOO WHY...?</h1>
<hr>
<p>Before the <span class='bold'>JAVA programming language</span> & <span class='bold'>JVM</span> there were other <span class='bold'>compiled</span> languages such as <span class='bold italic'>C, C++, Python...</span> etc</p>
<h1>JVM Knows Nothing About JAVA Programming Language, <span class='italic'>STRANGE...!</span></h1>
<hr>
<p>The <span class='bold'>JVM</span> knows about only one <span class='highlight bold'>instruction set</span>; we call it the <span class='bold italic highlight'>BYTE CODE !</span></p>
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