#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNCloudinary, RCTEventEmitter)

RCT_EXTERN_METHOD(setCloud:(String)cloudName withApi:(String)apiKey)
RCT_EXTERN_METHOD(uploadFile:(String)fileUri)

@end
