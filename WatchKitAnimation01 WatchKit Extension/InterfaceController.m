//
//  InterfaceController.m
//  WatchKitAnimation01 WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/03.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *imgSpriteAnimation;
 
@end


@implementation InterfaceController

// 最初に呼び出されるメソッド
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

// ユーザーにUIが表示されたタイミングで呼び出されるメソッド
- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    // 花火画像
    [self.imgSpriteAnimation setImageNamed:@"img-"];
    // アニメーション
    [self.imgSpriteAnimation startAnimatingWithImagesInRange:NSMakeRange(0, 60)
                                                    duration:3.0
                                                 repeatCount:0];
    
    NSLog(@"%@ will activate", self);
}

// UIが非表示になったタイミングで呼び出されるメソッド
- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



