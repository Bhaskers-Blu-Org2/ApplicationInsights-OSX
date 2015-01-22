#import "MSAIObject.h"
#import "MSAITelemetryData.h"
#import "MSAIDomain.h"

@interface MSAIExceptionDetails : MSAIObject

@property (nonatomic, strong) NSNumber *exceptionDetailsId;
@property (nonatomic, strong) NSNumber *outerId;
@property (nonatomic, strong) NSString *typeName;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, assign) BOOL hasFullStack;
@property (nonatomic, strong) NSString *stack;
@property (nonatomic, strong) NSMutableArray *parsedStack;


@end
