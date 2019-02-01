//
//  ViewController.swift
//  edu.washington.benjas6.lifecounter
//
//  Created by Benjamin Shi on 1/29/19.
//  Copyright © 2019 Benjamin Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var playerViewList: [UIView]!
    @IBOutlet var playerInputList: [UITextField]!
    @IBOutlet var playerHealthList: [UILabel]!
    
    var numberOfPlayer : Int  = 4
    var historyRecord : String  = ""
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var gameOverButton: UIButton!
    @IBOutlet weak var removePlayer: UIButton!
    @IBOutlet weak var addPlayer: UIButton!
    
    @IBAction func showHistory(_ sender: Any) {
        performSegue(withIdentifier: "historySegue", sender: self)
    }
    
    @IBAction func PlayerOnePlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[0].text = String( Int(playerHealthList[0].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer One plus One health."
        print(numberOfPlayer)
        for health in playerHealthList[0...numberOfPlayer - 1] {
            print(Int(health.text!)!)
        }
    }
    
    @IBAction func playerOneMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[0].text = String( Int(playerHealthList[0].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer one minus One health."
        checkGameOver()
    }
    
    @IBAction func playerOnePlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[0].text ?? "0")!
        playerHealthList[0].text = String( Int(playerHealthList[0].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer one plus \(inputNumber) health."
    }
    
    @IBAction func playerOneMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[0].text!)!
        playerHealthList[0].text = String( Int(playerHealthList[0].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer one minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerTwoPlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[1].text = String( Int(playerHealthList[1].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer two plus One health."
    }
    
    @IBAction func playerThreePlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[2].text = String( Int(playerHealthList[2].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer three plus One health."
    }
    
    @IBAction func playerFourPlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[3].text = String( Int(playerHealthList[3].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer four plus One health."
    }
    @IBAction func playerFivePlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[4].text = String( Int(playerHealthList[4].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer seven plus One health."
    }
    
    
    @IBAction func playerSixPlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[5].text = String( Int(playerHealthList[5].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer six plus One health."
    }
    
    @IBAction func playerSevenPlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[6].text = String( Int(playerHealthList[6].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer seven plus One health."
    }
    
    @IBAction func playerEightPlusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[7].text = String( Int(playerHealthList[7].text!)! + 1 )
        self.historyRecord = self.historyRecord + "\nPlayer eight plus One health."
    }
    
    @IBAction func playerTwoMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[1].text = String( Int(playerHealthList[1].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer two minus One health."
        checkGameOver()
    }
    
    @IBAction func playerThreeMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[2].text = String( Int(playerHealthList[2].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer three minus One health."
        checkGameOver()
    }
    
    @IBAction func playerFourMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[3].text = String( Int(playerHealthList[3].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer four minus One health."
        checkGameOver()
    }
    
    @IBAction func playerFiveMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[4].text = String( Int(playerHealthList[4].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer five minus One health."
        checkGameOver()
    }
    
    @IBAction func playerSixMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[5].text = String( Int(playerHealthList[5].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer six minus One health."
        checkGameOver()
    }
    
    @IBAction func playerSevenMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[6].text = String( Int(playerHealthList[6].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer seven minus One health."
        checkGameOver()
    }
    
    @IBAction func playerEightMinusOne(_ sender: Any) {
        checkStatus()
        playerHealthList[7].text = String( Int(playerHealthList[7].text!)! - 1 )
        self.historyRecord = self.historyRecord + "\nPlayer eight minus One health."
        checkGameOver()
    }
    
    
    @IBAction func playerTwoPlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[1].text ?? "0")!
        playerHealthList[1].text = String( Int(playerHealthList[1].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer two plus \(inputNumber) health."
    }
    
    @IBAction func playerThreePlys(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[2].text ?? "0")!
        playerHealthList[2].text = String( Int(playerHealthList[2].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer three plus \(inputNumber) health."
    }
    
    @IBAction func playerFourPlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[3].text ?? "0")!
        playerHealthList[3].text = String( Int(playerHealthList[3].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer four plus \(inputNumber) health."
    }
    
    @IBAction func playerFivePlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[4].text ?? "0")!
        playerHealthList[4].text = String( Int(playerHealthList[4].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer five plus \(inputNumber) health."
    }
    
    @IBAction func playerSixPlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[5].text ?? "0")!
        playerHealthList[5].text = String( Int(playerHealthList[5].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer six plus \(inputNumber) health."
    }
    
    @IBAction func playerSevenPlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[6].text ?? "0")!
        playerHealthList[6].text = String( Int(playerHealthList[6].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer one plus \(inputNumber) health."
    }
    
    @IBAction func playerEightPlus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[7].text ?? "0")!
        playerHealthList[7].text = String( Int(playerHealthList[7].text!)! + inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer one plus \(inputNumber) health."
    }
    
    @IBAction func playerTwoMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[1].text!)!
        playerHealthList[1].text = String( Int(playerHealthList[1].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer two minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerThreeMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[2].text!)!
        playerHealthList[2].text = String( Int(playerHealthList[2].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer three minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerFourMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[3].text!)!
        playerHealthList[3].text = String( Int(playerHealthList[3].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer four minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerFiveMibus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[4].text!)!
        playerHealthList[4].text = String( Int(playerHealthList[4].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer five minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerSixMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[5].text!)!
        playerHealthList[5].text = String( Int(playerHealthList[5].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer six minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerSevenMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[6].text!)!
        playerHealthList[6].text = String( Int(playerHealthList[6].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer seven minus \(inputNumber) health."
        checkGameOver()
    }
    
    @IBAction func playerEightMinus(_ sender: Any) {
        checkStatus()
        let inputNumber : Int = Int(playerInputList[7].text!)!
        playerHealthList[7].text = String( Int(playerHealthList[7].text ?? "0")! - inputNumber)
        self.historyRecord = self.historyRecord + "\nPlayer eight minus \(inputNumber) health."
        checkGameOver()
    }
    
//
//    func ifGameOver (_ health : Int, _ name : String) {
//        if health <= 0 {
//            ifGameOverOutput.text = "\(name) lose the game."
//        }
//    }
    
    // Reset the Game.
    @IBAction func resetTheGame(_ sender: Any) {
        for view in playerViewList [0...3] {
            view.isHidden = false
        }
        for view in playerViewList [4...7] {
            view.isHidden = true
        }
        for health in playerHealthList[0...7] {
            health.text = "20"
        }
        for input in playerInputList[0...7] {
            input.text = "0"
        }
        self.addPlayer.isEnabled = true
        self.removePlayer.isEnabled = true
        self.gameOverButton.isHidden = true
        self.gameOverLabel.isHidden = true
        self.historyRecord = ""
        
    }
    
    // the remove a player
    @IBAction func hidePlayer(_ sender: Any) {
        if numberOfPlayer > 1 {
            playerViewList[numberOfPlayer].isHidden = true
            numberOfPlayer = numberOfPlayer - 1
        }
    }
    
    // to plus a player
    @IBAction func addPlayer(_ sender: Any) {
        if numberOfPlayer <= 7 {
            playerViewList[numberOfPlayer].isHidden = false
            numberOfPlayer = numberOfPlayer + 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkStatus()
        for view in playerViewList [0...3] {
            view.isHidden = false
        }
        for view in playerViewList [4...7] {
            view.isHidden = true
        }
        addPlayer.isEnabled = true
        removePlayer.isEnabled = true
        gameOverButton.isHidden = true
        gameOverLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // to check if the game has started
    func checkStatus () {
        removePlayer.isEnabled = false
        addPlayer.isEnabled = false
    }
    
    // Check if the Game is over.
    func checkGameOver () {
        var numberOfPlayerSurvived : Int = 0
        for health in playerHealthList[0...self.numberOfPlayer - 1] {
            if Int(health.text!)! > 0 {
                numberOfPlayerSurvived = numberOfPlayerSurvived + 1
            }
        }
        if numberOfPlayerSurvived == 1 {
            var playerName : String  = ""
            for index in 0...(self.numberOfPlayer - 1) {
                if Int(playerHealthList[index].text!)! > 0 {
                    playerName  = "player " + String(index + 1)
                }
            }
            gameOverLabel.text = playerName + " is the winner"
            gameOverButton.isHidden = false
            gameOverLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! HisotoryViewController
        vc.history = historyRecord
    }
}

