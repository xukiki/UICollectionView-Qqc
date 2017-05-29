//
//  UICollectionView+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "UICollectionView+Qqc.h"

@implementation UICollectionView (Qqc)

/**
 *  注册UICollectionView所需的cell(载入同类名的nib文件)
 *
 *  @param nibClass   cell的class
 *  @param identifier 标志
 */
- (void)registerNibWithClass:(Class)nibClass forCellWithReuseIdentifier:(NSString *)identifier inBundle:(NSBundle*)bundle
{
    if (nibClass == NULL || identifier == nil)
    {
        return;
    }
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(nibClass) bundle:bundle] forCellWithReuseIdentifier:identifier];
}

// 注册Cell
- (void)registerNibWithName:(NSString *)strNib
{
    [self registerNib:[UINib nibWithNibName:strNib bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册Cell
- (void)registerNibWithName:(NSString *)strNib bundle:(NSString*)strBundleName
{
    NSBundle* bundle = [[NSBundle alloc] initWithPath:[[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"]];
    [self registerNib:[UINib nibWithNibName:strNib bundle:bundle] forCellWithReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册头部View
- (void)registerNibWithHeaderSupplementaryViewName:(NSString *)strNib
{
    [self registerNib:[UINib nibWithNibName:strNib bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册头部View
- (void)registerNibWithHeaderSupplementaryViewName:(NSString *)strNib bundle:(NSString*)strBundleName
{
    NSBundle* bundle = [[NSBundle alloc] initWithPath:[[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"]];
    [self registerNib:[UINib nibWithNibName:strNib bundle:bundle] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册尾部View
- (void)registerNibWithFooterSupplementaryViewName:(NSString *)strNib
{
    [self registerNib:[UINib nibWithNibName:strNib bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

// 注册尾部View
- (void)registerNibWithFooterSupplementaryViewName:(NSString *)strNib bundle:(NSString*)strBundleName
{
    NSBundle* bundle = [[NSBundle alloc] initWithPath:[[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"]];
    [self registerNib:[UINib nibWithNibName:strNib bundle:bundle] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:[NSString stringWithFormat:@"%@Identity", strNib]];
}

@end
