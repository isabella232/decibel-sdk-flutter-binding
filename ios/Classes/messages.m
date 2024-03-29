// Autogenerated from Pigeon (v0.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString*, id>* wrapResult(NSDictionary *result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}

@interface FLTSessionMessage ()
+(FLTSessionMessage*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end
@interface FLTScreenMessage ()
+(FLTScreenMessage*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end
@interface FLTConsentsMessage ()
+(FLTConsentsMessage*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end
@interface FLTScreenshotMessage ()
+(FLTScreenshotMessage*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end

@implementation FLTSessionMessage
+(FLTSessionMessage*)fromMap:(NSDictionary*)dict {
  FLTSessionMessage* result = [[FLTSessionMessage alloc] init];
  result.account = dict[@"account"];
  if ((NSNull *)result.account == [NSNull null]) {
    result.account = nil;
  }
  result.property = dict[@"property"];
  if ((NSNull *)result.property == [NSNull null]) {
    result.property = nil;
  }
  result.consents = dict[@"consents"];
  if ((NSNull *)result.consents == [NSNull null]) {
    result.consents = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.account ? self.account : [NSNull null]), @"account", (self.property ? self.property : [NSNull null]), @"property", (self.consents ? self.consents : [NSNull null]), @"consents", nil];
}
@end

@implementation FLTScreenMessage
+(FLTScreenMessage*)fromMap:(NSDictionary*)dict {
  FLTScreenMessage* result = [[FLTScreenMessage alloc] init];
  result.screenName = dict[@"screenName"];
  if ((NSNull *)result.screenName == [NSNull null]) {
    result.screenName = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.screenName ? self.screenName : [NSNull null]), @"screenName", nil];
}
@end

@implementation FLTConsentsMessage
+(FLTConsentsMessage*)fromMap:(NSDictionary*)dict {
  FLTConsentsMessage* result = [[FLTConsentsMessage alloc] init];
  result.consents = dict[@"consents"];
  if ((NSNull *)result.consents == [NSNull null]) {
    result.consents = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.consents ? self.consents : [NSNull null]), @"consents", nil];
}
@end

@implementation FLTScreenshotMessage
+(FLTScreenshotMessage*)fromMap:(NSDictionary*)dict {
  FLTScreenshotMessage* result = [[FLTScreenshotMessage alloc] init];
  result.screenshotData = dict[@"screenshotData"];
  if ((NSNull *)result.screenshotData == [NSNull null]) {
    result.screenshotData = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.screenshotData ? self.screenshotData : [NSNull null]), @"screenshotData", nil];
}
@end

void FLTDecibelSdkApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<FLTDecibelSdkApi> api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DecibelSdkApi.initialize"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTSessionMessage *input = [FLTSessionMessage fromMap:message];
        FlutterError *error;
        [api initialize:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DecibelSdkApi.setScreen"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTScreenMessage *input = [FLTScreenMessage fromMap:message];
        FlutterError *error;
        [api setScreen:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DecibelSdkApi.setEnableConsents"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTConsentsMessage *input = [FLTConsentsMessage fromMap:message];
        FlutterError *error;
        [api setEnableConsents:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DecibelSdkApi.setDisableConsents"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTConsentsMessage *input = [FLTConsentsMessage fromMap:message];
        FlutterError *error;
        [api setDisableConsents:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.DecibelSdkApi.sendScreenshot"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTScreenshotMessage *input = [FLTScreenshotMessage fromMap:message];
        FlutterError *error;
        [api sendScreenshot:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
