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
    self.view.backgroundColor = UIColor.whiteColor;
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
        self.wordText.textAlignment = NSTextAlignmentLeft;
        
        self.explanation = [[UILabel alloc] init];
        self.explanation.text = @"Explanation";
        
        self.explanationText = [[UITextView alloc] init];
        self.explanationText.textAlignment = NSTextAlignmentRight;

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
    
    NSLayoutConstraint *con1 = [self.text.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:25];
    NSLayoutConstraint *con2 = [self.text.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:15];
    
    NSLayoutConstraint *con3 = [self.wordText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *con4 = [self.wordText.topAnchor constraintEqualToAnchor:self.text.bottomAnchor constant:25];
    
    NSLayoutConstraint *con5 = [self.explanation.topAnchor constraintEqualToAnchor:self.wordText.bottomAnchor constant:25];
    NSLayoutConstraint *con6 = [self.explanation.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:15];
    
    NSLayoutConstraint *con7 = [self.explanationText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
    NSLayoutConstraint *con8 = [self.explanationText.topAnchor constraintEqualToAnchor:self.explanation.bottomAnchor constant:25];
    NSLayoutConstraint *con14= [self.explanationText.heightAnchor constraintEqualToConstant:20];
    NSLayoutConstraint *con15 = [self.explanationText.widthAnchor constraintEqualToConstant:200];
    
    NSArray<NSLayoutConstraint *> *consts = @[con1, con2, con3, con4, con5, con6, con7, con8, con14, con15];
    for (NSLayoutConstraint *con in consts) {
        con.active = YES;
    }
}

@end
