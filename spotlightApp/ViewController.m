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
    //self.focoPrendidoImage.alpha = 1;//en caso que quede con otro valor, volvemos a ponerlo sin transparencia
    self.focoPrendidoImage.alpha = 0;
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
        self.focoPrendidoImage.alpha = 1;
        self.alphaSlider.value = 1;
        self.focoLabel.text = @"Foco encendido:";
        self.economizadorLabel.text = @"Economizador";
        self.economizadorLabel.alpha = 1.0;
        [self.view layoutIfNeeded];
    }
                     completion:^(BOOL finalizado){
        self.focoPrendidoImage.hidden = NO;
        self.alphaSlider.enabled = YES;
    }];
    
    //self.focoLabel.text = @"Foco encendido:";
    
    //self.alphaSlider.enabled = YES;
    //self.alphaSlider.value = 1;//ponemos el slider a full
    
    self.bajoLabel.alpha = 1;
    self.normalLabel.alpha = 1;
    self.altoLabel.alpha = 1;
}

- (void) apagarFoco{
    //lo que hace si el foco se apaga
    self.focoPrendidoImage.alpha = 1;
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
        self.focoPrendidoImage.alpha = 0;
        self.focoLabel.text = @"Foco apagado:";
        self.economizadorLabel.text = @"Economizador (desactivado)";
        self.economizadorLabel.alpha = 0.5;
        self.alphaSlider.value = 0;
        [self.view layoutIfNeeded];
    }
                     completion:^(BOOL finalizado){
        self.focoPrendidoImage.hidden = YES;
        self.alphaSlider.enabled = NO;
        self.alphaSlider.value = 0;
    }];

    
    //self.focoLabel.text = @"Foco apagado:";
    
    //self.alphaSlider.enabled = NO;
    
    //self.alphaSlider.value = 0;//ponemos el slider a 0
    
    self.bajoLabel.alpha = 0.5;
    self.normalLabel.alpha = 0.5;
    self.altoLabel.alpha = 0.5;
}

- (IBAction)focoSwitch:(UISwitch *)sender {
    if ([sender isOn])
        [self prenderFoco];
    else
        [self apagarFoco];
//        [UIView animateKeyframesWithDuration:0.1
//        delay:0.0
//        options:UIViewAutoresizingFlexibleHeight
//        animations:^{
//                self.alphaSlider.alpha = 0.5;
//
//        } completion:^(BOOL finished){
//            self.alphaSlider.alpha = 1.0;
//            [self apagarFoco];
//        }];
}
- (IBAction)changeAlphaSlider:(UISlider *)sender {
    //NSLog(@"Hola");
    self.focoPrendidoImage.alpha = sender.value;
    
    if(self.focoPrendidoImage.alpha==0){
        self.bajoLabel.alpha = 0.5;
        self.normalLabel.alpha = 0.5;
        self.altoLabel.alpha = 0.5;
    }else{
        self.bajoLabel.alpha = 1;
        self.normalLabel.alpha = 1;
        self.altoLabel.alpha = 1;
    };
}
@end
