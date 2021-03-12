#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNCloudinary, RCTEventEmitter)

RCT_EXTERN_METHOD(setCloud:(NSString *)cloudName apiKey:(NSString *)apiKey)
RCT_EXTERN_METHOD(uploadFile:(NSString *)fileUri)

@end
