//
//  WordDetailViewController.m
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import "WordDetailViewController.h"

@interface WordDetailViewController ()

@property (nonatomic, strong) Word *word;
@property (nonatomic, strong) UILabel *text;
@property (nonatomic, strong) UILabel *wordText;
@property (nonatomic, strong) UILabel *explanation;
@property (nonatomic, strong) UITextView *explanationText;

@end

@implementation WordDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.wordText.text = self.word.wordText;
    self.explanationText.text = self.word.wordExplanation;
    [self.view addSubview:self.text];
    [self.view addSubview:self.wordText];
    [self.view addSubview:self.explanationText];
    [self.view addSubview:self.explanation];
    [self setupLayoutConstraints];
}
- (instancetype)initWithWord:(Word *)word {
    self = [super init];
    if (self) {
        self.word = word;
        self.text = [[UILabel alloc] init];
        self.text.text = @"Word";
        
        self.wordText = [[UILabel alloc] init];
        
        self.explanation = [[UILabel alloc] init];
        self.explanation.text = @"Explanation";
        
        self.explanationText = [[UITextView alloc] init];
    }
    return self;
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) setupLayoutConstraints {

    self.text.translatesAutoresizingMaskIntoConstraints = NO;
    self.wordText.translatesAutoresizingMaskIntoConstraints = NO;
    self.explanation.translatesAutoresizingMaskIntoConstraints = NO;
    self.explanationText.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *con1 = [self.text.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:25];
    NSLayoutConstraint *con2 = [self.text.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:15];
    NSLayoutConstraint *con9 = [self.text.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-15];
    NSLayoutConstraint *con11 = [self.text.heightAnchor constraintEqualToConstant:20];
    
    NSLayoutConstraint *con3 = [self.wordText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *con4 = [self.wordText.topAnchor constraintEqualToAnchor:self.text.bottomAnchor constant:25];
    NSLayoutConstraint *con13 = [self.wordText.heightAnchor constraintEqualToConstant:20];
    
    NSLayoutConstraint *con5 = [self.explanation.topAnchor constraintEqualToAnchor:self.wordText.bottomAnchor constant:25];
    NSLayoutConstraint *con6 = [self.explanation.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:15];
     NSLayoutConstraint *con10 = [self.explanation.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-15];
    NSLayoutConstraint *con12 = [self.explanation.heightAnchor constraintEqualToConstant:20];

    
    NSLayoutConstraint *con7 = [self.explanationText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *con8 = [self.explanationText.topAnchor constraintEqualToAnchor:self.explanation.bottomAnchor constant:25];
    NSLayoutConstraint *con14= [self.explanationText.heightAnchor constraintEqualToConstant:20];

    
    NSArray<NSLayoutConstraint *> *consts = @[con1, con2, con3, con4, con5, con6, con7, con8, con9, con10, con11, con12, con13, con14];
    for (NSLayoutConstraint *con in consts) {
        con.active = YES;
    }
}

@end
