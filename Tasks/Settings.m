//
//  Settings.m
//  Tasks
//
//  Created by Evgeny on 13.09.2022.
//  Copyright © 2022 Cultured Code. All rights reserved.
//

#import "Settings.h"


@interface Settings ()

@property (nonatomic, readonly) NSDictionary<NSString *, NSNumber *> *arguments;

@end

@implementation Settings

+ (instancetype)sharedInstance {
    static Settings *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self new];
    });
    
    return sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (nil != self) {
        
        NSDictionary *dictionary = NSBundle.mainBundle.infoDictionary[@"TasksArguments"];
        NSAssert([dictionary isKindOfClass:NSDictionary.class], @"%@", dictionary);
        _arguments = dictionary;
    }
    
    return self;
}

static NSString *const isLoginSucceededKey = @"isLoginSucceededKey";

- (void)setIsLoginSucceeded:(BOOL)isLoginSucceeded {
    [NSUserDefaults.standardUserDefaults setBool:isLoginSucceeded forKey:isLoginSucceededKey];
}

- (BOOL)isLoginSucceeded {
    return [NSUserDefaults.standardUserDefaults boolForKey:isLoginSucceededKey];
}

@end
