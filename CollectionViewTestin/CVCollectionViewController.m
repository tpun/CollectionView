//
//  CVCollectionViewController.m
//  CollectionViewTestin
//
//  Created by Thomas Pun on 7/28/13.
//  Copyright (c) 2013 Thomas Pun. All rights reserved.
//

#import "CVCollectionViewController.h"
#import "CVCollectionViewCell.h"

@interface CVCollectionViewController ()

@end

@implementation CVCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    CVCollectionViewCell *viewCell = (CVCollectionViewCell *)cell;
    viewCell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];

    NSArray *colors = [NSArray arrayWithObjects:[UIColor greenColor],[UIColor redColor], [UIColor blueColor], [UIColor brownColor], [UIColor orangeColor], nil];
    viewCell.contentView.backgroundColor = colors[indexPath.row];
    return cell;
}

@end
