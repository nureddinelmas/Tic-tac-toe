//
//  ViewController.swift
//  TreIRad
//
//  Created by Nureddin Elmas on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {

    var player1active = false
    var tableNumber = [11,12,13,14,15,34,23,12,54]
  
    @IBOutlet weak var nineImageView: UIImageView!
    @IBOutlet weak var eightImageView: UIImageView!
    @IBOutlet weak var sevenImageView: UIImageView!
    @IBOutlet weak var sixImageView: UIImageView!
    @IBOutlet weak var fiveImageView: UIImageView!
    @IBOutlet weak var fourImageView: UIImageView!
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var oneImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    
    @IBAction func sevenTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[6] = 1
            sevenImageView.image = UIImage(named: "x")
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[6] = 2
            sevenImageView.image = UIImage(named: "o")
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func nineTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[8] = 1
            nineImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[8] = 2
            
            nineImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func twoTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[1] = 1
            twoImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[1] = 2
            twoImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
        }
    }
    
    @IBAction func eightTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[7] = 1
            
            eightImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[7] = 2
            eightImageView.image = UIImage(named: "o")
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func fourTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[3] = 1
            
            fourImageView.image = UIImage(named: "x")
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[3] = 2
            
            fourImageView.image = UIImage(named: "o")
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func sixTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[5] = 1
            
            sixImageView.image = UIImage(named: "x")
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[5] = 2
            
            sixImageView.image = UIImage(named: "o")
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func fiveTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[4] = 1
            fiveImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[4] = 2
            fiveImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func threeTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[2] = 1
            threeImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
        }else{
            tableNumber[2] = 2
            threeImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
        }
    }
    @IBAction func oneTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            
            tableNumber[0] = 1
           
            oneImageView.image = UIImage(named: "x")
            
            player1active.toggle()
           
            checkItNumber()
        }else{
           tableNumber[0] = 2
            oneImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
        }
    }
    
 
    
    func checkItNumber(){
        if (tableNumber[0] == tableNumber[1] && tableNumber[0] == tableNumber[2]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 0 1 2")
        }
        if (tableNumber[3] == tableNumber[4] && tableNumber[3] == tableNumber[5]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 3 4 5")
        }
        if (tableNumber[6] == tableNumber[7] && tableNumber[6] == tableNumber[8]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 6 7 8")
        }
        
        
        if (tableNumber[0] == tableNumber[3] && tableNumber[0] == tableNumber[6]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 0 3 6")
        }
        if (tableNumber[1] == tableNumber[4] && tableNumber[1] == tableNumber[7]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 1 4 7")
        }
        if (tableNumber[2] == tableNumber[5] && tableNumber[2] == tableNumber[8]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 2 5 8")
        }
        
        
        if (tableNumber[0] == tableNumber[4] && tableNumber[0] == tableNumber[8]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 0 4 8")
        }
        if (tableNumber[2] == tableNumber[4] && tableNumber[2] == tableNumber[6]){
            resetNumber()
            makeAlert(title: "Bravo!", message: "You win! 2 4 6 ")
        }
      
        
        
        if  oneImageView.image != UIImage(named: "rectangel") && twoImageView.image != UIImage(named: "rectangel") && threeImageView.image != UIImage(named: "rectangel") && fourImageView.image != UIImage(named: "rectangel") && fiveImageView.image != UIImage(named: "rectangel") && sixImageView.image != UIImage(named: "rectangel") && sevenImageView.image != UIImage(named: "rectangel") && eightImageView.image != UIImage(named: "rectangel") && nineImageView.image != UIImage(named: "rectangel"){
            
            makeAlert(title: "Nobody win!", message: "Nobody!")
            resetNumber()
        }
        
        
        
    }

    


    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    func resetNumber(){
        oneImageView.image = UIImage(named: "rectangel")
        twoImageView.image = UIImage(named: "rectangel")
        threeImageView.image = UIImage(named: "rectangel")
        fourImageView.image = UIImage(named: "rectangel")
        fiveImageView.image = UIImage(named: "rectangel")
        sixImageView.image = UIImage(named: "rectangel")
        sevenImageView.image = UIImage(named: "rectangel")
        eightImageView.image = UIImage(named: "rectangel")
        nineImageView.image = UIImage(named: "rectangel")
        
        tableNumber = [11,12,13,14,15,34,23,12,54]
    }
    
    
}

