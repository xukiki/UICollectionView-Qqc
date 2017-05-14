//
//  UICollectionView+Qqc.h
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UICollectionView类别
 */
@interface UICollectionView (Qqc)

/**
 *  注册UICollectionView所需的cell(载入同类名的nib文件)
 *
 *  @param nibClass   cell的class
 *  @param identifier 标志
 */
- (void)registerNibWithClass:(Class)nibClass forCellWithReuseIdentifier:(NSString *)identifier inBundle:(NSBundle*)bundle;

@end
