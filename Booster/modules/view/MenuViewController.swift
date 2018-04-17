//
//  MenuViewController.swift
//  Booster
//
//  Created by MAC on 17/04/18.
//  Copyright © 2018 Booster. All rights reserved.
//
import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var LeadingC: NSLayoutConstraint!
    @IBOutlet weak var TrailingC: NSLayoutConstraint!
    @IBOutlet weak var myview: UIView!
    
    
    @IBOutlet weak var submitbutton: UIButton!
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        
        if !hamburgerMenuIsVisible {
            LeadingC.constant = 150
            //this constant is NEGATIVE because we are moving it 150 points OUTWARD and that means -150
            TrailingC.constant = -150
            
            //1
            hamburgerMenuIsVisible = true
        } else {
            //if the hamburger menu IS visible, then move the ubeView back to its original position
            LeadingC.constant = 0
            TrailingC.constant = 0
            
            //2
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goType1(_ sender: Any) {
        goType(1)
    }
    
    @IBAction func goType2(_ sender: Any) {
        goType(2)
    }
    
    @IBAction func goType3(_ sender: Any) {
        goType(3)
    }
    
    @IBAction func goType4(_ sender: Any) {
        goType(4)
    }
    
    @IBAction func goType5(_ sender: Any) {
        goType(5)
    }
    
    func goType(_ num:Int)
    {
        performSegue(withIdentifier: "segueinvestor", sender: nil)
    }
    
    @IBAction func goSubmit(_ sender: Any) {
        performSegue(withIdentifier: "seguesubmit", sender: nil)
    }
    
    
    
    
    
    
    
    
    
}

