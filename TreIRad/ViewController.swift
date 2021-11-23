//
//  ViewController.swift
//  TreIRad
//
//  Created by Nureddin Elmas on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {

    var tableList = [TableNumber]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let firstTry = TableNumber(zero: 1, one: 2, two: 1, three: 0, four: 0, five: 2, six: 2, seven: 1, eight: 1)
        tableList.append(firstTry)
        checkIt()
       
    }
    
    func checkIt(){
        if (tableList[0].zero == tableList[0].one && tableList[0].zero == tableList[0].two){
            print("0-1-2 ")
        }
        if (tableList[0].three == tableList[0].four && tableList[0].three == tableList[0].five){
            print("3-4-5 ")
        }
        if (tableList[0].six == tableList[0].seven && tableList[0].six == tableList[0].eight){
            print("6-7-8 ")
        }
        if (tableList[0].zero == tableList[0].three && tableList[0].zero == tableList[0].six){
            print("0-3-6 ")
        }
        if (tableList[0].one == tableList[0].four && tableList[0].one == tableList[0].seven){
            print("1-4-7 ")
        }
        if (tableList[0].zero == tableList[0].one && tableList[0].zero == tableList[0].two){
            print(" ")
        }
        if (tableList[0].zero == tableList[0].four && tableList[0].zero == tableList[0].eight){
            print("0-4-8 ")
        }
        if (tableList[0].two == tableList[0].five && tableList[0].two == tableList[0].eight){
            print("Bra! ")
        }
        if (tableList[0].two == tableList[0].five && tableList[0].two == tableList[0].eight){
            print("Bra! ")
        }
        if (tableList[0].two == tableList[0].five && tableList[0].two == tableList[0].eight){
            print("Bra! ")
        }
        
    }


    
}

