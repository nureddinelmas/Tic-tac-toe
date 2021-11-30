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
  
    @IBOutlet var firstTap: UITapGestureRecognizer!
    @IBOutlet var secondTap: UITapGestureRecognizer!
    @IBOutlet var thirdTap: UITapGestureRecognizer!
    @IBOutlet var fourthTap: UITapGestureRecognizer!
    @IBOutlet var fifthTap: UITapGestureRecognizer!
    @IBOutlet var sixthTap: UITapGestureRecognizer!
    @IBOutlet var seventhTap: UITapGestureRecognizer!
    @IBOutlet var eighthTap: UITapGestureRecognizer!
    @IBOutlet var ninethTap: UITapGestureRecognizer!
    @IBOutlet weak var playerTextLabel: UILabel!
    @IBOutlet weak var nineImageView: UIImageView!
    @IBOutlet weak var eightImageView: UIImageView!
    @IBOutlet weak var sevenImageView: UIImageView!
    @IBOutlet weak var sixImageView: UIImageView!
    @IBOutlet weak var fiveImageView: UIImageView!
    @IBOutlet weak var fourImageView: UIImageView!
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var oneImageView: UIImageView!
    
    @IBOutlet weak var timeLabelText: UILabel!
    var timer = Timer()
    var tid = 5
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
   
        oneImageView.image = UIImage(named: "rectangel")
        twoImageView.image = UIImage(named: "rectangel")
        threeImageView.image = UIImage(named: "rectangel")
        fourImageView.image = UIImage(named: "rectangel")
        fiveImageView.image = UIImage(named: "rectangel")
        sixImageView.image = UIImage(named: "rectangel")
        sevenImageView.image = UIImage(named: "rectangel")
        eightImageView.image = UIImage(named: "rectangel")
        nineImageView.image = UIImage(named: "rectangel")
        counter = tid
        timeIsGoing()
 
        view.backgroundColor = UIColor.init(red:1, green:0.74, blue:0.3, alpha:1.0)
        
        showPlayerText()
    }
    
    @objc func countDown(){

        if counter == 0 {
//            timer.invalidate()
            timeLabelText.text = "Time : 0"
            counter = 5
            player1active.toggle()
            showPlayerText()
        }
        
        counter = counter - 1
        timeLabelText.text = "Time : \(counter)"
    }
    
    
    func timeIsGoing(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
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
        counter = tid
        showPlayerText ()
        seventhTap.isEnabled = false
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
        counter = tid
        showPlayerText ()
        ninethTap.isEnabled = false
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
        counter = tid
        showPlayerText ()
        secondTap.isEnabled = false
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
        counter = tid
        showPlayerText ()
        eighthTap.isEnabled = false
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
        counter = tid
        showPlayerText ()
        fourthTap.isEnabled = false
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
        counter = tid
        showPlayerText ()
        sixthTap.isEnabled = false
    }
    
    
    @IBAction func fiveTapPressed(_ sender: UITapGestureRecognizer) {
        
        if player1active {
            tableNumber[4] = 1
            fiveImageView.image = UIImage(named: "x")
            
            player1active.toggle()
            checkItNumber()
            fifthTap.isEnabled = false
          
        }else{
            tableNumber[4] = 2
            fiveImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
            fifthTap.isEnabled = false
        }
        counter = tid
        showPlayerText ()
    }
    
    
    
    @IBAction func threeTapPressed(_ sender: UITapGestureRecognizer) {
        if player1active {
            tableNumber[2] = 1
            threeImageView.image = UIImage(named: "x")
            player1active.toggle()
            checkItNumber()
            thirdTap.isEnabled = false
      
        }else{
            tableNumber[2] = 2
            threeImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
            thirdTap.isEnabled = false
        }
        counter = tid
        showPlayerText ()
    }
    
    
    
    @IBAction func oneTapPressed(_ sender: UITapGestureRecognizer) {
     
        if player1active {
            tableNumber[0] = 1
            oneImageView.image = UIImage(named: "x")
            player1active.toggle()
            checkItNumber()
            firstTap.isEnabled = false
       
        }else{
           tableNumber[0] = 2
            oneImageView.image = UIImage(named: "o")
            
            player1active.toggle()
            checkItNumber()
            firstTap.isEnabled = false
        
        }
        counter = tid
        showPlayerText ()
    }
    
 
    
    func checkItNumber(){

        if (tableNumber[0] == tableNumber[1] && tableNumber[0] == tableNumber[2]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        if (tableNumber[3] == tableNumber[4] && tableNumber[3] == tableNumber[5]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        if (tableNumber[6] == tableNumber[7] && tableNumber[6] == tableNumber[8]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        
        
        if (tableNumber[0] == tableNumber[3] && tableNumber[0] == tableNumber[6]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()

        }
        if (tableNumber[1] == tableNumber[4] && tableNumber[1] == tableNumber[7]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        if (tableNumber[2] == tableNumber[5] && tableNumber[2] == tableNumber[8]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        
        
        if (tableNumber[0] == tableNumber[4] && tableNumber[0] == tableNumber[8]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
        if (tableNumber[2] == tableNumber[4] && tableNumber[2] == tableNumber[6]){
            makeAlert(title: "Bravo!", message: "You \(winner.uppercased()) win! ")
            waitForNewPlay()
        }
      
        
        
        if  oneImageView.image != UIImage(named: "rectangel") && twoImageView.image != UIImage(named: "rectangel") && threeImageView.image != UIImage(named: "rectangel") && fourImageView.image != UIImage(named: "rectangel") && fiveImageView.image != UIImage(named: "rectangel") && sixImageView.image != UIImage(named: "rectangel") && sevenImageView.image != UIImage(named: "rectangel") && eightImageView.image != UIImage(named: "rectangel") && nineImageView.image != UIImage(named: "rectangel"){
            
            makeAlert(title: "Nobody win!", message: "Nobody!")
            resetNumber()
        }

    }

    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let playAgainButton = UIAlertAction(title: "Play Again", style: .default) { task in
            self.resetNumber()
            self.timeIsGoing()
            self.showPlayerText()
            
            
        }
        let finishButton = UIAlertAction(title: "Finish", style: .cancel) { task in
            print("finished")
        }
        
        alert.addAction(playAgainButton)
        alert.addAction(finishButton)
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
        timer.invalidate()
        playerTextLabel.text = ""
        timeLabelText.text = "Time : 0"
        
        firstTap.isEnabled = true
        secondTap.isEnabled = true
        thirdTap.isEnabled = true
        fourthTap.isEnabled = true
        fifthTap.isEnabled = true
        sixthTap.isEnabled = true
        seventhTap.isEnabled = true
        eighthTap.isEnabled = true
        ninethTap.isEnabled = true
    }
    
    
   func showPlayerText (){
       if player1active {
           playerTextLabel.text = "Player 2 is now playing"
       } else{
           playerTextLabel.text = "Player 1 is now playing"
       }
       
    }
    
    var winner : String {
        if player1active {
            return "Player 2"
        } else{
            return "Player 1"
        }
    }
    
    func waitForNewPlay(){
        timer.invalidate()
        playerTextLabel.text = ""
    }
}

