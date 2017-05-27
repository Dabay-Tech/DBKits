//
//  DBCollectionViewController.m
//  DBKitDemo
//
//  Created by Dabay on 2017/5/25.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "DBCollectionViewController.h"
#import "DBCollectionViewFlowLayout.h"

@interface DBCollectionViewController ()


/** UICollectionView中的数据源数组 */
@property(nonatomic,strong) NSMutableArray * db_dataArray;


@end


@implementation DBCollectionViewController

#pragma mark - 懒加载数据源的数组
-(NSMutableArray *)db_dataArray{
    if(!_db_dataArray){
        _db_dataArray=[NSMutableArray array];
    }
    return _db_dataArray;
}



#pragma mark - 重用标识符：注册cell、sectionHeader、sectionFooter
// 注意const的位置
static NSString * const db_CollectionCellId = @"db_CollectionCellId";
static NSString * const db_HeaderId = @"db_HeaderId";
static NSString * const db_FooterId = @"db_FooterId";




- (void)viewDidLoad {
    [super viewDidLoad];
    [self db_setup];
}



#pragma mark - 初始化DBCollectionViewController

/** 初始化DBCollectionViewController */
-(void)db_setup{

    //创建自定义布局的UICollectionView
    DBCollectionViewFlowLayout * db_flowLayout=[[DBCollectionViewFlowLayout alloc]init];// 自定义的布局对象
    self.collectionView=[[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:db_flowLayout];
    
    // 注册cell、sectionHeader、sectionFooter
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:db_CollectionCellId];
    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:db_HeaderId];
    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:db_FooterId];


}


#pragma mark <UICollectionViewDataSource> - UICollectionView数据源方法

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _db_dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:db_CollectionCellId forIndexPath:indexPath];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate> -  UICollectionView代理方法

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
