#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAISession : MSAIObject

@property (nonatomic, strong) NSString *sessionId;
@property (nonatomic, strong) NSString *isFirst;
@property (nonatomic, strong) NSString *isNew;


@end
