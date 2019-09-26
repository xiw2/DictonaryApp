//
//  ViewController.m
//  DictionaryApp
//
//  Created by Xinyu Weng on 9/26/19.
//  Copyright © 2019 Xinyu Weng. All rights reserved.
//

#import "ViewController.h"
#import "WordManager.h"
#import "WordDetailViewController.h"

static NSString * const kCellReuseIdentifier = @"dictTableViewCell";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *dictTableView;
@property (nonatomic, strong) WordManager *wordManager;

@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dictTableView = [[UITableView alloc] init];
        self.wordManager = [[WordManager alloc] init];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.dictTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellReuseIdentifier];
    self.dictTableView.dataSource = self;
    self.dictTableView.delegate = self;
    [self.view addSubview: self.dictTableView];
    [self setupLayoutConstraints];
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.dictTableView dequeueReusableCellWithIdentifier:kCellReuseIdentifier forIndexPath:indexPath];
    cell.textLabel.text = self.wordManager.words[indexPath.row].wordText;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.wordManager.words.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Word *word = self.wordManager.words[indexPath.row];
    WordDetailViewController *detailViewController = [[WordDetailViewController alloc] initWithWord:word];
    [self.navigationController pushViewController:detailViewController animated:YES];
}


- (void) setupLayoutConstraints {
    self.dictTableView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *con1 = [self.dictTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor];
    NSLayoutConstraint *con2 = [self.dictTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor];
    NSLayoutConstraint *con3 = [self.dictTableView.topAnchor constraintEqualToAnchor:self.view.topAnchor];
    NSLayoutConstraint *con4 = [self.dictTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor];
    
    NSArray<NSLayoutConstraint *> *constraints = @[con1, con2, con3, con4];
    
    for (NSLayoutConstraint *con in constraints) {
        con.active = YES;
    }
    
}

@end
