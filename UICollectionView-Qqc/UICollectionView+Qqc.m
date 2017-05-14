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

@end
