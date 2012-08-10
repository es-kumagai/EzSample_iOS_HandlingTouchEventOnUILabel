//
//  EzSampleViewController.m
//  EzSample_iOS_HandlingTouchEventOnUILabel
//
//  Created by 熊谷 友宏 on H.24/08/10.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleViewController.h"

@implementation EzSampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.statusLabel.text = @"";
}

- (void)label:(EzSampleLabel *)label touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	self.statusLabel.text = @"ラベルをタッチしています。";
}

- (void)label:(EzSampleLabel *)label touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	self.statusLabel.text = @"";
}

- (void)label:(EzSampleLabel *)label touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	self.statusLabel.text = @"";
}

@end
