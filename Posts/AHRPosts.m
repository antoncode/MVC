//
//  AHRPosts.m
//  Posts
//
//  Created by Anton Rivera on 2/11/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "AHRPosts.h"

@implementation AHRPosts

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    if (self) {
        self.userName = [dictionary objectForKey:@"userName"];
        self.title = [dictionary objectForKey:@"title"];
        self.content = [dictionary objectForKey:@"content"];
        self.timeStamp = [dictionary objectForKey:@"timeStamp"];
    }
    return self;
}

//- (NSString *) formattedDate {
//    NSDateFormatter *timeStampFormatter = [[NSDateFormatter alloc] init];
//    [timeStampFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    NSDate *tempTimeStamp = [timeStampFormatter dateFromString:self.timeStamp];
//    
//    [timeStampFormatter setDateFormat:@"EE MMM, dd"];
//    return [timeStampFormatter stringFromDate:tempTimeStamp];
//}

@end
