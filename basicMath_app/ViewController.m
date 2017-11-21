//
//  ViewController.m
//  basicMath_app
//
//  Created by venuka maddukuri on 2017-04-20.
//  Copyright © 2017 venuka maddukuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showResult:(UIButton *)sender {
    //HEre (UIButton *)sender is already of type UIButton, so we dont need to do the check again isKindOfClass
    //Int he previous case, it is not (UIButton *)sender, but it is (id)sender, so we needed a check in that case
    
    //As you can see the following code is same in every if condition, so we declare it outside the loop whcih makes it common for all conditions:
    
    NSString *a = _num1.text;
    NSInteger b = [a floatValue];
    NSString *p = _num2.text;
    NSInteger q = [p floatValue];
    
    //NOte: Always use more readable variable names. Never use single letter vairable names.
    
    //To even simplify this, you can use
    //float num1 = _num1.text.floatValue;
    //float num2 = _num2.text.floatValue;
    
    //I am removing the above code in all if- conditoons below
    
    if ([sender isKindOfClass:[UIButton class]]) {
        
        //Again we dont need cast as sender is explicitly declared as UIButton in the method definiton
        UIButton *btn = (UIButton *)sender;
        
        if([btn tag] == 1){
            NSLog(@"first button clicked");
            _answer.text = [NSString stringWithFormat: @"%ld", b+q];
            //num1+num2 instead of b+q
        }
        if ([btn tag] == 2) {
            NSLog(@"second button clicked");
            _answer.text = [NSString stringWithFormat: @"%ld", b-q];
            //num1-num2 instead of b-q
        }
        if([btn tag] == 3){
            NSLog(@"third button clicked");
            _answer.text = [NSString stringWithFormat: @"%ld", (b/q)];
        }
        if ([btn tag] == 4) {
            NSLog(@"four button clicked");
            _answer.text = [NSString stringWithFormat: @"%ld", b*q];
        }
        if ([btn tag] == 5) {
            NSLog(@"fifth button clicked");
            _answer.text=@"0";
        }

    }

}

@end
