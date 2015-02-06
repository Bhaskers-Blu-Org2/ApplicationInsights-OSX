#import "MSAIEventData.h"
/// Data contract class for type EventData.
@implementation MSAIEventData
@synthesize envelopeTypeName = _envelopeTypeName;
@synthesize dataTypeName = _dataTypeName;

/// Initializes a new instance of the class.
- (instancetype)init {
  if (self = [super init]) {
    _envelopeTypeName = @"Microsoft.ApplicationInsights.Event";
    _dataTypeName = @"EventData";
    self.version = @2;
    self.properties = [MSAIOrderedDictionary new];
    self.measurements = [MSAIOrderedDictionary new];
  }
  return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  if (self.name != nil) {
    [dict setObject:self.name forKey:@"name"];
  }
  if (self.properties !=nil) {
    [dict setObject:self.properties forKey:@"properties"];
  }
  if (self.measurements) {
    [dict setObject:self.measurements forKey:@"measurements"];
  }
  
  
  return dict;
}

#pragma mark - NSCoding

- (id)initWithCoder:(NSCoder *)coder {
  self = [super initWithCoder:coder];
  if(self) {
    self.measurements = [coder decodeObjectForKey:@"self.measurements"];
    _envelopeTypeName = [coder decodeObjectForKey:@"_envelopeTypeName"];
    _dataTypeName = [coder decodeObjectForKey:@"_dataTypeName"];
  }

  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  [coder encodeObject:self.measurements forKey:@"self.measurements"];
  [coder encodeObject:self.envelopeTypeName forKey:@"_envelopeTypeName"];
  [coder encodeObject:self.dataTypeName forKey:@"_dataTypeName"];
}


@end
