//
//  ViewController.m
//  masonry
//
//  Created by wan on 16/3/7.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"


//(定义宏一定要在引入Masonry.h文件之前). ===== 要点！！！
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND
//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

//#import  <Masonry/Masonry.h>

/*!
 *  @author wan, 16-03-07 21:03:01
 *   注意如果以PODS的方式 宏处理方式不生效；要以本地类的方式才可以！！！
 *
 *  @param void <#void description#>
 *
 *  @return <#return value description#>
 *
 *  @since <#version number#>
 */
#import "Masonry.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor brownColor];
    [self.view addSubview:blueView];
    
    
    /*!
     *  @author wan, 16-03-07 21:03:41
     *
     *  @brief 其实masonry内部已经为我们设置了NO;这里设置不设置都是有一样的 
     
     使用Masonry不需要设置
     控件的translatesAutoresizingMaskIntoConstraints属性为NO;
     *
     *  @since <#version number#>
     */
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(self.view).offset(-20);
        make.left.equalTo(self.view).offset(20);
        make.height.equalTo(60);
        make.width.equalTo(redView);
        make.right.equalTo(redView.left).offset(-10);
        make.top.equalTo(redView);
        make.bottom.equalTo(redView);
        
        
    }];
    
    
    
    
    [redView makeConstraints:^(MASConstraintMaker *make) {
        
//        make.bottom.equalTo(self.view).offset(-20);
        make.right.equalTo(self.view).offset(-20);
//        make.width.equalTo(blueView);
//        make.height.equalTo(blueView);
        
        
    }];
    
    
    
    /*!
     *  @author wan, 16-03-07 19:03:45
     *
     *  @brief 实用masonry必须要将视图添加到父视图上！
     第二点： mas_XXX可以到处实用；除了 第一个类似right的位置 eg:make.right.mas_equalTo
     *
     *  @since <#version number#>
     */
//    [self.view addSubview:blueView];
//    
//    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        //        make.center.equalTo(self.view);
//        //        make.right.mas_equalTo(self.view.mas_right).offset(-20);
//        //        make.bottom.mas_equalTo(self.view).offset(-20);
//        //        make.width.mas_equalTo(100);
//        //        make.height.mas_equalTo(100);
//        
//        make.center.mas_equalTo(self.view);
//        make.width.equalTo(self.view.width).multipliedBy(0.5);
//        make.height.equalTo(self.view).multipliedBy(0.5);
//        
//        //        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(10, 10, 10, 10));
//        //        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(10, 10, 10, 10));
//        
//    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}



@end
