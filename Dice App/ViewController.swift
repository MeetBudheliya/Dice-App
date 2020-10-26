//
//  ViewController.swift
//  Dice App
//
//  Created by MAC on 11/09/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstDice.image = #imageLiteral(resourceName: "Six")
        secondDice.image = #imageLiteral(resourceName: "one")
        totalScoreLabel.text = "Start👍"
        rollButton.layer.cornerRadius = 10
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let firstRandom = Int.random(in: 0...5)
        let secondRandom = Int.random(in: 0...5)
        firstDice.image = [ #imageLiteral(resourceName: "one") , #imageLiteral(resourceName: "Two") , #imageLiteral(resourceName: "Three") , #imageLiteral(resourceName: "Four") , #imageLiteral(resourceName: "Five") , #imageLiteral(resourceName: "Six") ][firstRandom]
        secondDice.image = [ #imageLiteral(resourceName: "one") , #imageLiteral(resourceName: "Two") , #imageLiteral(resourceName: "Three") , #imageLiteral(resourceName: "Four") , #imageLiteral(resourceName: "Five") , #imageLiteral(resourceName: "Six") ][secondRandom]
        
        totalScoreLabel.text = "Total : "+String( firstRandom + secondRandom + 2)
        
    }
    

}

