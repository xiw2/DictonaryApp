//
//  Word.h
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Word : NSObject

@property (nonatomic, strong) NSString *wordText;
@property (nonatomic, strong) NSString *wordExplanation;

@end

NS_ASSUME_NONNULL_END
