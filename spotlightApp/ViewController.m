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

- (void) prenderFoco{
    //lo que hace si el foco se enciende
    self.focoPrendidoImage.hidden = NO;//mostrar imagen (prendido)
    self.focoPrendidoImage.alpha = 1;//en caso que quede con otro valor, volvemos a ponerlo sin transparencia
    
    self.focoLabel.text = @"Foco encendido:";
    
    self.alphaSlider.enabled = YES;
    self.alphaSlider.value = 1;//ponemos el slider a full
}

- (void) apagarFoco{
    //lo que hace si el foco se apaga
    self.focoPrendidoImage.hidden = YES;
    
    self.focoLabel.text = @"Foco apagado:";
    
    self.alphaSlider.enabled = NO;
    self.alphaSlider.value = 0;//ponemos el slider a 0
}

- (IBAction)focoSwitch:(UISwitch *)sender {
    if ([sender isOn])
        [self prenderFoco];
    else
        [self apagarFoco];
}
- (IBAction)changeAlphaSlider:(UISlider *)sender {
    //NSLog(@"Hola");
    self.focoPrendidoImage.alpha = sender.value;
}
@end
