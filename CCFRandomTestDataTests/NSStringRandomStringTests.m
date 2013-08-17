#import <XCTest/XCTest.h>
#import "NSString+RandomData.h"

@interface CCFRandomTestDataTests : XCTestCase
@end

@implementation CCFRandomTestDataTests

- (void)testThatWeCanObtainAFemaleName {
    NSString *name = [NSString randomFemaleName];
    XCTAssertNotNil(name, @"name should not be nil");
}

- (void)testThatWeCanObtainAMaleName {
    NSString *name = [NSString randomMaleName];
    XCTAssertNotNil(name, @"name should not be nil");
}

- (void)testThatWeCanObtainALastName {
    NSString *name = [NSString randomLastName];
    XCTAssertNotNil(name, @"name should not be nil");
}

- (void)testThatWeCanObtainAFullFemaleNameWithMiddle {
    NSString *name = [NSString randomFullNameWithMiddle:YES female:YES];
    XCTAssertNotNil(name, @"name should not be nil");
}

- (void)testThatWeCanObtainARandomCountryName {
    NSString *name = [NSString randomCountryName];
    XCTAssertNotNil(name, @"name should not be nil");
}

@end
