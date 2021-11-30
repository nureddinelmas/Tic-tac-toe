//
//  PlayerIntroViewController.swift
//  TreIRad
//
//  Created by Nureddin Elmas on 2021-11-30.
//

import UIKit

class PlayerIntroViewController: UIViewController {
    let toSecondSite = "toPlay"

    @IBOutlet weak var firstPlayerName: UITextField!
    @IBOutlet weak var secondPlayerName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func goToPlayNow(_ sender: UIButton) {
        
        if firstPlayerName.text == "" || secondPlayerName.text == "" {
            
        }else{
            performSegue(withIdentifier: toSecondSite, sender: nil)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        
        if segue.identifier == toSecondSite {
            let destinationVC = segue.destination as! ViewController
            
            if let first = firstPlayerName.text, let second = secondPlayerName.text{
                destinationVC.player1 = first
                destinationVC.player2 = second
            }
           
        }
    }
    
    

}
