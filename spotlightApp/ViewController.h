//
//  ViewController.h
//  spotlightApp
//
//  Created by Admin on 3/20/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *focoLabel;
@property (strong, nonatomic) IBOutlet UIImageView *focoPrendidoImage;
@property (strong, nonatomic) IBOutlet UISwitch *focoSwitch;

- (IBAction)focoSwitch:(UISwitch *)sender;

@property (strong, nonatomic) IBOutlet UISlider *alphaSlider;
- (IBAction)changeAlphaSlider:(UISlider *)sender;

- (void) prenderFoco;
- (void) apagarFoco;

@end

