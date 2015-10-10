//
//  AppDelegate.m
//  HomeWork_06
//
//  Created by MD on 06.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import "AppDelegate.h"
#import "ASStudent.h"


@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    ASStudent* student = [ASStudent new];
    
    student.colorHair = ASColorHairWhite;
    student.colorEyes = ASColorEyeBlue;
    student.colorRace = ASColorRaceWhite;
    
    
    ASStudent* student2 = [ASStudent new];
    [student2 setColorHair:ASColorHairBlack];
    [student2 setColorEyes:ASColorEyeBlack];
    [student2 setColorRace:ASColorRaceBlack];
    
    
    CGPoint point1   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point2   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point3   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point4   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point5   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point6   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point7   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point8   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point9   = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    CGPoint point10  = CGPointMake ( arc4random() % 10,  arc4random() % 10);
    
  //  CGRect rect;
   // rect = CGRectMake(4, 4 , 3, 3);
    
    /*
    NSArray* array = [NSArray arrayWithObjects: [NSValue valueWithCGPoint:point1],
                                                [NSValue valueWithCGPoint:point2],
                                                [NSValue valueWithCGPoint:point3],
                                                [NSValue valueWithCGPoint:point4],
                                                [NSValue valueWithCGPoint:point5],
                                                [NSValue valueWithCGPoint:point6],
                                                [NSValue valueWithCGPoint:point7],
                                                [NSValue valueWithCGPoint:point8],
                                                [NSValue valueWithCGPoint:point9],
                                                [NSValue valueWithCGPoint:point10], nil];
    for (NSValue* value in array) {
        
        CGPoint p = [value CGPointValue];
        NSLog(@" point = %@ ", NSStringFromCGPoint(p));
        bool result = CGRectContainsPoint(rect, p);
    
        if (result) {
            NSLog(@" Ты попал в = %@ ", NSStringFromCGPoint(p));
        }
        
    }*/
    
    /*
    CGPoint point10  = CGPointMake(6,6);
    NSArray* array = [NSArray arrayWithObjects: [NSValue valueWithCGPoint:point10], nil];
    
    
    for (NSValue* value in array) {
        
        CGPoint p = [value CGPointValue];
        bool result = CGRectContainsPoint(rect, p);
        
        if (result) {
            NSLog(@" Ты попал в = %@ ", NSStringFromCGPoint(p));
        }
        
    } */
    
    CGRect rect;
    rect = CGRectMake(4, 4 , 3, 3);
    
    NSMutableArray* mutiArray = [NSMutableArray new];
    
    // creat array
    for (NSInteger i = 0; i <= 10; i++) {
        
        CGPoint point =  CGPointMake (arc4random() % 10, arc4random() % 10);
        NSValue* pointValue = [NSValue valueWithCGPoint:point];
        
        [mutiArray addObject:pointValue];
    }
    
    // print result
    for (NSValue* value in mutiArray) {
        
        CGPoint point = [value CGPointValue];
        
        if (CGRectContainsPoint(rect, point))
        {
            NSLog(@" Ты попал = %@ ", NSStringFromCGPoint(point));
        }
        else
        {
            NSLog(@" Выстрелил по  = %@ ", NSStringFromCGPoint(point));
        }
    }
    
    
    
    return YES;
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
