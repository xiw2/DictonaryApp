//
//  WordDetailViewController.h
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Word.h"

NS_ASSUME_NONNULL_BEGIN

@interface WordDetailViewController : UIViewController

- (instancetype)initWithWord : (Word *) word;

@end

NS_ASSUME_NONNULL_END
