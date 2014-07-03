library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'engine/web_components/tutorial_topic/tutorial-topic.dart' as i0;
import 'java_training_app.html.0.dart' as i1;
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'engine/web_components/tutorial_topic/tutorial-topic.dart' as smoke_0;
import 'package:polymer/polymer.dart' as smoke_1;
import 'package:observe/src/metadata.dart' as smoke_2;
abstract class _M0 {} // PolymerElement & ChangeNotifier

void main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
        #topic: (o) => o.topic,
      },
      setters: {
        #topic: (o, v) { o.topic = v; },
      },
      parents: {
        smoke_0.TutorialTopic: _M0,
        _M0: smoke_1.PolymerElement,
      },
      declarations: {
        smoke_0.TutorialTopic: {
          #topic: const Declaration(#topic, dynamic, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
        },
      },
      names: {
        #topic: r'topic',
      }));
  configureForDeployment([
      () => Polymer.register('tutorial-topic', i0.TutorialTopic),
    ]);
  i1.main();
}
