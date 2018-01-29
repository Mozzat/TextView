//
//  TextView.m
//  TextView
//
//  Created by ebadu on 2018/1/29.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "TextView.h"

@implementation TextView

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.textAlignment = NSTextAlignmentCenter;
        [self addObserver:self forKeyPath:@"contentSize" options: (NSKeyValueObservingOptionNew) context:NULL];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        self.textAlignment = NSTextAlignmentCenter;
        [self addObserver:self forKeyPath:@"contentSize" options: (NSKeyValueObservingOptionNew) context:NULL];
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"contentSize"])
    {
        UITextView *tv = object;
        CGFloat deadSpace = ([tv bounds].size.height - [tv contentSize].height);
        CGFloat inset = MAX(0, deadSpace/2.0);
        tv.contentInset = UIEdgeInsetsMake(inset, tv.contentInset.left, inset, tv.contentInset.right);
    }
}

-(void)dealloc
{
    [self removeObserver:self forKeyPath:@"contentSize"];
}


@end
