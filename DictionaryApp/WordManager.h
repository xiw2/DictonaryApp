//
//  WordManager.h
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"

NS_ASSUME_NONNULL_BEGIN

@interface WordManager : NSObject

@property (nonatomic, strong) NSArray<Word *> *words;

@end

NS_ASSUME_NONNULL_END
