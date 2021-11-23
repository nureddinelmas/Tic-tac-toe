//
//  ViewController.swift
//  TreIRad
//
//  Created by Nureddin Elmas on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handlePan2(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        if let viewToPan = sender.view{
            viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x,
                                       y: viewToPan.center.y + translation.y)
        }
    
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
    
    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        
        print("Jag är inne")
        
        let translation = sender.translation(in: self.view)
        
        if let viewToPan = sender.view{
            viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x,
                                       y: viewToPan.center.y + translation.y)
        }
    
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
}

