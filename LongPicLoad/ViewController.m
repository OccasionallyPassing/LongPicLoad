//
//  ViewController.m
//  LongPicLoad
//
//  Created by apple on 17/6/29.
//  Copyright © 2017年 Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor yellowColor];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:scrollView];
    
    NSString *imagePath = [[NSBundle mainBundle]pathForResource:@"longPic.jpg" ofType:nil];
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    CGSize imageSize = image.size;
    CGFloat imageViewH = self.view.bounds.size.height;
    if (image.size.width > 0) {
        imageViewH = self.view.bounds.size.width * (imageSize.height / imageSize.width);
    }
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, imageViewH)];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [scrollView addSubview:imageView];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, imageViewH);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
