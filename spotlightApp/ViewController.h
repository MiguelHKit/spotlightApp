//
//  ViewController.h
//  spotlightApp
//
//  Created by Admin on 3/20/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property(nonatomic, readonly) UIStatusBarStyle preferredStatusBarStyle;

@property (strong, nonatomic) IBOutlet UILabel *focoLabel;
@property (strong, nonatomic) IBOutlet UIImageView *focoPrendidoImage;
@property (strong, nonatomic) IBOutlet UISwitch *focoSwitch;

- (IBAction)focoSwitch:(UISwitch *)sender;

@property (strong, nonatomic) IBOutlet UISlider *alphaSlider;
- (IBAction)changeAlphaSlider:(UISlider *)sender;

@property (strong, nonatomic) IBOutlet UILabel *altoLabel;
@property (strong, nonatomic) IBOutlet UILabel *bajoLabel;
@property (strong, nonatomic) IBOutlet UILabel *normalLabel;

@property (weak, nonatomic) IBOutlet UILabel *economizadorLabel;

- (void) prenderFoco;
- (void) apagarFoco;

@end

