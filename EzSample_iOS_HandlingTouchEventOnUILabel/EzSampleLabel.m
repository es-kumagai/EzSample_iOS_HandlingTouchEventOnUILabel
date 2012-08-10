//
//  EzSampleLabel.m
//  EzSample_iOS_HandlingTouchEventOnUILabel
//
//  Created by 熊谷 友宏 on H.24/08/10.
//  Copyright (c) 平成24年 Tomohiro Kumagai. All rights reserved.
//

#import "EzSampleLabel.h"

@implementation EzSampleLabel

// 今回は Storyboard からのインスタンス化のため initWithCoder で初期化しています。
- (id)initWithCoder:(NSCoder *)aDecoder
{
	self = [super initWithCoder:aDecoder];
	
	if (self)
	{
		// UILabel で touchesBegan:withEvent: 系をハンドルするには、userInteractionEnabled を YES にする必要があります。
		self.userInteractionEnabled = YES;
	}
	
	return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	// タッチの開始を検出した場合は、デリゲートへそれを通知します。
	if ([self.delegate respondsToSelector:@selector(label:touchesBegan:withEvent:)])
	{
		[self.delegate label:self touchesBegan:touches withEvent:event];
	}
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	// タッチの終了を検出した場合は、デリゲートへそれを通知します。
	if ([self.delegate respondsToSelector:@selector(label:touchesEnded:withEvent:)])
	{
		[self.delegate label:self touchesEnded:touches withEvent:event];
	}
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	// タッチのキャンセルを検出した場合は、デリゲートへそれを通知します。
	if ([self.delegate respondsToSelector:@selector(label:touchesCancelled:withEvent:)])
	{
		[self.delegate label:self touchesCancelled:touches withEvent:event];
	}
}

@end
