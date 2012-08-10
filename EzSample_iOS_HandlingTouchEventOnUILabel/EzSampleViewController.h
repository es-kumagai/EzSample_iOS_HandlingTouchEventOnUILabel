//
//  EzSampleViewController.h
//  EzSample_iOS_HandlingTouchEventOnUILabel
//
//  Created by 熊谷 友宏 on H.24/08/10.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EzSampleLabel.h"

@interface EzSampleViewController : UIViewController <EzSampleLabelDelegate>

@property (nonatomic,readwrite,weak) IBOutlet UILabel* statusLabel;

@end
