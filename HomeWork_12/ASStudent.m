
#import "ASStudent.h"

@implementation ASStudent


-(id) initWithName:(NSString*) name andWithLastName:(NSString*) lastName {
    
    self = [super init];
    
    if (self) {
      
        _name     = name;
        _lastName = lastName;
        
    }
    
    return self;
}


@end
