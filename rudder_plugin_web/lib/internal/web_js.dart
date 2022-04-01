@JS()
library rudder_analytics.js;

import 'package:js/js.dart';
// import 'package:rudder_sdk_flutter/RudderLogger.dart';

@JS("rudderanalytics.load")
external load(
    String writeKey, String dataPlaneUrl, Map<String, dynamic>? options);

@JS("rudderanalytics.setAnonymousId")
external setAnonymousId(String anonymousId);

@JS("rudderanalytics.identify")
external identify(
    String userId, Map<String, dynamic>? traits, Map<String, dynamic>? options);

@JS("rudderanalytics.page")
external page(String? category, String name, Map<String, dynamic>? properties,
    Map<String, dynamic>? options);

@JS("rudderanalytics.track")
external track(String event, Map<String, dynamic>? properties,
    Map<String, dynamic>? options);

@JS("rudderanalytics.alias")
external alias(
    String to, //Denotes the new identifier of the user.
    String? from,
    //Denotes the old identifier which will be an alias for the to parameter.
    Map<String, dynamic>? options);

@JS("rudderanalytics.group")
external group(String groupId, Map<String, dynamic>? traits,
    Map<String, dynamic>? options);

@JS("rudderanalytics.reset")
external reset();

@JS("rudderanalytics.getAnonymousId")
external String? getAnonymousId();

@JS("rudderanalytics.getUserTraits")
external Map<String, dynamic>? getUserTraits();