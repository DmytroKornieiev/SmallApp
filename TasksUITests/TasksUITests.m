//
//  TasksUITests.m
//  TasksUITests
//
//  Created by Dmytro on 13.02.2023.
//  Copyright © 2023 Cultured Code. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TasksUITests : XCTestCase

@end

@implementation TasksUITests

XCUIApplication *app;

- (void)setUp {
    app = [[XCUIApplication alloc] init];
    [app launch];
}

- (void)tearDown {
    if (app. buttons[@"Logout"].exists) {
        [self logout];
    }
    app = nil;
}

- (void) testLoginWithWrongCreeds {
    [self login:@"1111"];
    XCTAssert(app.alerts[@"Error"].exists);
}

- (void) testingLoginAndLogout {
    [self login:@"1@co.uk"];
    XCUIElement *table = [[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0];
    XCTAssert(table.exists);
    [self logout];
    XCTAssert(app.textFields[@"Email"].exists);
}

- (void) logout {
    [app.buttons[@"Logout"] tap];
    [app.alerts.scrollViews.otherElements.buttons[@"Logout"] tap];
    [app pressForDuration:(1)];
}

- (void) login:(NSString *)email {
    [app/*@START_MENU_TOKEN@*/.textFields[@"Email"]/*[[".textFields[@\"Email\"]",".textFields[@\"password-text-field\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/ tap];
    [app/*@START_MENU_TOKEN@*/.textFields[@"Email"]/*[[".textFields[@\"Email\"]",".textFields[@\"password-text-field\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/ typeText:email];
    [app.secureTextFields[@"Password"] tap];
    [app.secureTextFields[@"Password"] typeText:@"1"];
    [app/*@START_MENU_TOKEN@*/.buttons[@"login-button"]/*[[".buttons[@\"Login\"]",".buttons[@\"login-button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ tap];
    [app pressForDuration:(2)];
}

@end
