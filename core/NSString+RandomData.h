/**
 *   @file NSString+RandomData.h
 *   @author Alan Duncan (www.cocoafactory.com)
 *
 *   @date 2013-08-16 13:32:27
 *
 *   @note Copyright 2013 Cocoa Factory, LLC.  All rights reserved
 */

@interface NSString (RandomData)

+ (NSString *)randomFemaleName;
+ (NSString *)randomMaleName;
+ (NSString *)randomLastName;
+ (NSString *)randomFullNameWithMiddle:(BOOL)withMiddleName female:(BOOL)isFemale;

+ (NSString *)randomCountryName;

@end
