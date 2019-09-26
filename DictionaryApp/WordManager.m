//
//  WordManager.m
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import "WordManager.h"

@implementation WordManager

@synthesize words;

- (NSArray<Word *> *) words
{
    if (!words) {
        Word *word1 = [[Word alloc] init];
        word1.wordText = @"abandon";
        word1.wordExplanation = @"cease to support or look after (someone); desert";
        
        Word *word2 = [[Word alloc] init];
        word2.wordText = @"zebra";
        word2.wordExplanation = @"an African wild horse with black-and-white stripes and an erect mane.";
        
        words = @[word1, word2];
    }
    return words;
}

@end
