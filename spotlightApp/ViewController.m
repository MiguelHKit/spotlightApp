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
        //lo que hace si el foco se enciende
        self.focoPrendidoImage.hidden = NO;
        self.focoPrendidoImage.alpha = 1;//en caso que quede con otro valor, volvemos a ponerlo sin transparencia
        self.alphaSlider.enabled = YES;
        self.alphaSlider.value = 1;//ponemos el slider a full
    } else {
        //lo que hace si el foco se apaga
        self.focoPrendidoImage.hidden = YES;
        self.alphaSlider.enabled = NO;
        self.alphaSlider.value = 0;//ponemos el slider a 0
    }
}
- (IBAction)changeAlphaSlider:(UISlider *)sender {
    //NSLog(@"Hola");
    self.focoPrendidoImage.alpha = sender.value;
}
@end
