//
//  AHRPosts.h
//  Posts
//
//  Created by Anton Rivera on 2/11/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AHRPosts : NSObject

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *timeStamp;

- (id)initWithDictionary:(NSDictionary *)dictionary;

//- (NSString *) formattedDate;

@end
