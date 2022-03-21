//
//  ViewController.m
//  spotlightApp
//
//  Created by Admin on 3/20/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)focoSwitch:(UISwitch *)sender {
    if ([sender isOn]) {
        self.focoPrendidoImage.hidden = NO;
    } else {
        self.focoPrendidoImage.hidden = YES;
    }
}
- (IBAction)changeAlphaSlider:(UISlider *)sender {
    //NSLog(@"Hola");
    self.focoPrendidoImage.alpha = sender.value;
}
@end
