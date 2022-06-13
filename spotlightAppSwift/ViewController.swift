//
//  ViewController.swift
//  spotlightAppSwift
//
//  Created by Admin on 12/6/22.
//

import UIKit

class ViewController: UIViewController {

//    @property (strong, nonatomic) IBOutlet UILabel *focoLabel;
//    @property (strong, nonatomic) IBOutlet UIImageView *focoPrendidoImage;
//    @property (strong, nonatomic) IBOutlet UISwitch *focoSwitch;
//
//    - (IBAction)focoSwitch:(UISwitch *)sender;
//
//    @property (strong, nonatomic) IBOutlet UISlider *alphaSlider;
//    - (IBAction)changeAlphaSlider:(UISlider *)sender;
//
//    @property (strong, nonatomic) IBOutlet UILabel *altoLabel;
//    @property (strong, nonatomic) IBOutlet UILabel *bajoLabel;
//    @property (strong, nonatomic) IBOutlet UILabel *normalLabel;
//
//    - (void) prenderFoco;
//    - (void) apagarFoco;

    @IBOutlet weak var focoLabel:UILabel!
    @IBOutlet weak var focoPrendidoImage:UIImageView!
    @IBOutlet weak var focoSwitch:UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func focoSwitch(_ sender: UISwitch) {
        
    }
    
    @IBAction func changeAlphaSlider(_ sender: UISlider) {
    }
    
    func prenderFoco() -> Void {
        
    }
    
    func apagarFoco() -> Void {
        
    }
}

