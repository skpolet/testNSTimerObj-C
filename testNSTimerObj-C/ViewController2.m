//
//  ViewController2.m
//  testNSTimerObj-C
//
//  Created by Sergey Mikhailov on 03.02.2020.
//  Copyright © 2020 Sergey Mikhailov. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (nonatomic, weak) NSTimer *timer;
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(update) userInfo:nil repeats:YES];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if (self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

- (void)update {
    NSLog(@"tik-tak");
}
@end
