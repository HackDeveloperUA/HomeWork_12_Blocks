
#import "AppDelegate.h"
#import "ASStudent.h"


typedef void      (^testBlock1)(void);
typedef NSString* (^testBlock2) (NSString*);

@interface AppDelegate ()

-(void) testMethod: (NSString* (^)(NSString*)) testBlock2;

@end
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    testBlock1 block1 = ^{
        NSLog(@"This is testBlock1 - block1 ");
    };
    
    
    testBlock2 block2 = ^(NSString* value1) {
       
        NSLog(@"Parameter string - %@",value1);
        return [NSString stringWithFormat:@"Parameter string - %@",value1];
    };
    /*
    NSString* result = block2 (@"TEST");
    NSLog(@" result = %@",result);
    
    [self testMethod:block2];*/
 
    ASStudent* student1 =  [[ASStudent alloc] initWithName:@"James"   andWithLastName:@"Smith"];
    ASStudent* student2 =  [[ASStudent alloc] initWithName:@"John"    andWithLastName:@"Johnson"];
    ASStudent* student3 =  [[ASStudent alloc] initWithName:@"Michael" andWithLastName:@"Lee"];
    ASStudent* student4 =  [[ASStudent alloc] initWithName:@"William" andWithLastName:@"Harris"];
    ASStudent* student5 =  [[ASStudent alloc] initWithName:@"David"   andWithLastName:@"Martin"];
    ASStudent* student6 =  [[ASStudent alloc] initWithName:@"Richard" andWithLastName:@"Thompson"];
    ASStudent* student7 =  [[ASStudent alloc] initWithName:@"Charles" andWithLastName:@"Smith"];
    ASStudent* student8 =  [[ASStudent alloc] initWithName:@"Joseph"  andWithLastName:@"Evans"];
    ASStudent* student9 =  [[ASStudent alloc] initWithName:@"Thomas"  andWithLastName:@"Lee"];
    ASStudent* student10 = [[ASStudent alloc] initWithName:@"Donald"  andWithLastName:@"Anderson"];

    
    NSArray* array = [NSArray arrayWithObjects: student1, student2, student3,
                                                student4, student5, student6,
                                                student7, student8, student9,
                                                student10 ,nil];
    
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(ASStudent *p1, ASStudent *p2){
        
        return [p1.lastName compare:p2.lastName];
    }];
    
    for (ASStudent *obj in sortedArray) {
        
        NSLog(@" Last Name = %@",obj.lastName);
        NSLog(@" Name      = %@",obj.name);
        NSLog(@"\n\n\n");
    }
 
    return YES;
}

-(void) testMethod:(NSString* (^)(NSString*)) testBlock2 {
    NSLog(@" We are here . Method ");
    testBlock2 (@"sss");
}







- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
