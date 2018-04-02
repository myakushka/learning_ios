//
//  CppWrapper.m
//  learning_ios
//
//  Created by Евгений Васильев on 02/04/2018.
//  Copyright © 2018 MyakushStudio. All rights reserved.
//

#import <memory>
#import "CppWrapper.h"
#import "CppInterface.h"

@implementation CppWrapper

- (int)getInt {
    return std::make_shared<CppInterface>()->getInt();
}

- (NSString*)getString {
    const std::string& string = std::make_shared<CppInterface>()->getString();
    NSString* nsString = [NSString stringWithUTF8String:string.c_str()];
    return nsString;
}


@end
