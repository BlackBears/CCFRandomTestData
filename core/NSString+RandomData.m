#import "NSString+RandomData.h"

static NSString *stringByCapitalizingFirstLetter(NSString *str)
{
    str = [str stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[[str substringToIndex:1] capitalizedString]];
    return [str stringByReplacingCharactersInRange:NSMakeRange(1, str.length-1) withString:[[str substringFromIndex:1] lowercaseString]];
}

@implementation NSString (RandomData)

+ (NSString *)randomFemaleName {
    static NSArray *FemaleNames = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"female" ofType:@"txt"];
        NSString *fileString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        FemaleNames = [fileString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    });
    return stringByCapitalizingFirstLetter(FemaleNames[arc4random() % FemaleNames.count]);
}

+ (NSString *)randomMaleName {
    static NSArray *MaleNames = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"male" ofType:@"txt"];
        NSString *fileString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        MaleNames = [fileString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    });
    return stringByCapitalizingFirstLetter(MaleNames[arc4random() % MaleNames.count]);
}

+ (NSString *)randomLastName {
    static NSArray *LastNames = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"last" ofType:@"txt"];
        NSString *fileString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        LastNames = [fileString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    });
    return stringByCapitalizingFirstLetter(LastNames[arc4random() % LastNames.count]);
}

+ (NSString *)randomFullNameWithMiddle:(BOOL)withMiddleName female:(BOOL)isFemale {
    NSArray *names = nil;
    if( isFemale )
        names = @[[NSString randomFemaleName],[NSString randomFemaleName],[NSString randomLastName]];
    else
        names = @[[NSString randomMaleName], [NSString randomMaleName], [NSString randomLastName]];
    if( !withMiddleName )
        names = [names subarrayWithRange:NSMakeRange(1, 2)];
    return [names componentsJoinedByString:@" "];
}

#pragma mark - Countries

+ (NSString *)randomCountryName {
    static NSArray *CountryNames = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"countries" ofType:@"txt"];
        NSString *fileString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        CountryNames = [fileString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    });
    return CountryNames[arc4random() % CountryNames.count];
}

@end
