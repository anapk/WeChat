//
//  PhotoCollectionViewCell.m
//  WeChat
//
//  Created by Siegrain on 16/4/24.
//  Copyright © 2016年 siegrain. weChat. All rights reserved.
//

#import "Masonry/Masonry/Masonry.h"
#import "PhotoCollectionViewCell.h"

@interface
PhotoCollectionViewCell ()
@property (strong, nonatomic) UIImageView* imageView;
@end
@implementation PhotoCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildCell];
        [self bindConstraints];
    }

    return self;
}
- (void)setImage:(UIImage*)image
{
    _image = image;

    self.imageView.image = image;
}
- (void)buildCell
{
    self.imageView = [[UIImageView alloc] init];
    self.imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imageView.clipsToBounds = true;
    [self addSubview:self.imageView];
}

- (void)bindConstraints
{
    [self.imageView mas_updateConstraints:^(MASConstraintMaker* make) {
        make.top.left.right.bottom.offset(0);
    }];
}
@end