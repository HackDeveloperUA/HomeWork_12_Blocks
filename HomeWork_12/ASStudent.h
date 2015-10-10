#import <Foundation/Foundation.h>



@interface ASStudent : NSObject

@property (strong , nonatomic) NSString* name;
@property (strong , nonatomic) NSString* lastName;


-(id) initWithName:(NSString*) name andWithLastName:(NSString*) lastName;

@end
