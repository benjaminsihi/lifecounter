//
//  ViewController.swift
//  edu.washington.benjas6.lifecounter
//
//  Created by Benjamin Shi on 1/29/19.
//  Copyright © 2019 Benjamin Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1LifeCountLabel: UILabel!
    @IBOutlet weak var player2LifeCountLabel: UILabel!
    @IBOutlet weak var player3LifeCountLabel: UILabel!
    @IBOutlet weak var player4LifeCountLabel: UILabel!
    @IBOutlet weak var ifGameOverOutput: UILabel!
    

    @IBAction func playerOnePlusOne(_ sender: Any) {
        player1LifeCountLabel.text = String(Int(player1LifeCountLabel.text!)! + 1)
    }

    @IBAction func PlayerOneMinusOne(_ sender: Any) {
        ifGameOver(Int(player1LifeCountLabel.text!)! - 1, "Player 1")
        player1LifeCountLabel.text = String(Int(player1LifeCountLabel.text!)! - 1)
    }

    @IBAction func playerOnePlusFive(_ sender: Any) {
        player1LifeCountLabel.text = String(Int(player1LifeCountLabel.text!)! + 5)
    }

    @IBAction func playerOneMinusFive(_ sender: Any) {
        ifGameOver(Int(player1LifeCountLabel.text!)! - 5, "Player 1")
        player1LifeCountLabel.text = String(Int(player1LifeCountLabel.text!)! - 5)
    }
    
    
    @IBAction func palyer2PlusOne(_ sender: Any) {
        player2LifeCountLabel.text = String(Int(player2LifeCountLabel.text!)! + 1)
    }
    
    @IBAction func player2MinusOne(_ sender: Any) {
        ifGameOver(Int(player1LifeCountLabel.text!)! - 1, "Player 2")
        player2LifeCountLabel.text = String(Int(player2LifeCountLabel.text!)! - 1)
    }
    

    @IBAction func player2Plus5(_ sender: Any) {
        player2LifeCountLabel.text = String(Int(player2LifeCountLabel.text!)! + 5)
    }
    
    @IBAction func player2MinusFive(_ sender: Any) {
        ifGameOver(Int(player2LifeCountLabel.text!)! - 5, "Player 2")
        player2LifeCountLabel.text = String(Int(player2LifeCountLabel.text!)! - 5)
    }
    
    @IBAction func player3PlusOne(_ sender: Any) {
        player3LifeCountLabel.text = String(Int(player3LifeCountLabel.text!)! + 1)
    }
    
    @IBAction func player3MinusOne(_ sender: Any) {
        ifGameOver(Int(player3LifeCountLabel.text!)! - 1, "Player 3")
        player3LifeCountLabel.text = String(Int(player3LifeCountLabel.text!)! - 1)
    }
    
    @IBAction func player3PlusFive(_ sender: Any) {
        player3LifeCountLabel.text = String(Int(player3LifeCountLabel.text!)! + 5)
    }
    
    @IBAction func player3MinusFive(_ sender: Any) {
        ifGameOver(Int(player3LifeCountLabel.text!)! - 5, "Player 3")
        player3LifeCountLabel.text = String(Int(player3LifeCountLabel.text!)! - 5)
    }
    
    @IBAction func player4PlusOne(_ sender: Any) {
        player4LifeCountLabel.text = String(Int(player4LifeCountLabel.text!)! + 1)
    }
    
    
    @IBAction func player4MinusOne(_ sender: Any) {
        ifGameOver(Int(player4LifeCountLabel.text!)! - 1, "Player 4")
        player4LifeCountLabel.text = String(Int(player4LifeCountLabel.text!)! - 1)
    }
    
    @IBAction func player4PlusFive(_ sender: Any) {
        player4LifeCountLabel.text = String(Int(player4LifeCountLabel.text!)! + 5)
    }
    
    @IBAction func player4MinusFive(_ sender: Any) {
        ifGameOver(Int(player4LifeCountLabel.text!)! - 5, "Player 4")
        player4LifeCountLabel.text = String(Int(player4LifeCountLabel.text!)! - 5)
    }
    
    func ifGameOver (_ health : Int, _ name : String) {
        if health <= 0 {
            ifGameOverOutput.text = "\(name) lose the game."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

