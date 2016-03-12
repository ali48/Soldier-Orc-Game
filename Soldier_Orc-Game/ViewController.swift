//
//  ViewController.swift
//  Soldier_Orc-Game
//
//  Created by Muhammad Ali on 2016-03-06.
//  Copyright © 2016 Muhammad Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var orcHpLbl: UILabel!
    
    @IBOutlet weak var soldierHpLbl: UILabel!
   
    @IBOutlet weak var soldierImg: UIImageView!
    @IBOutlet weak var orcImg: UIImageView!
    
    @IBOutlet weak var infoLbl: UILabel!
    
    @IBAction func orcAttackBtn(sender: AnyObject) {
        if soldier.attemptAttack(orc.attackPwr) {
            soldierHpLbl.text = "\(soldier.hp) HP"
            infoLbl.text = "Alexander hurt by Troll attack"
            
            if soldierGameEnds(){
                restartGame()
            }
            
        }
    }
    
    @IBAction func soldierAttackBtn(sender: AnyObject) {
        if orc.attemptAttack(soldier.attackPwr) {
            orcHpLbl.text = "\(orc.hp) HP"
            infoLbl.text = "Troll slashed by Alexander"
            
            
            if orcGameEnds() {
                
                restartGame()
            }
            
        }
    }
    
    var soldier: Soldier!
    var orc: Orc!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soldier = Soldier(name: "Alexander", hp: 150, attackPwr: 30)
        orc = Orc(name: "Troll", hp: 170, attackPwr: 20)
        
        orcHpLbl.text = "\(orc.hp)HP"
        soldierHpLbl.text = "\(soldier.hp)HP"
        
       
        
    }
    
    

    func soldierGameEnds()->Bool {
        if soldier.hp <= 0 {
            infoLbl.text = "GameOver, Troll kills Alexander"
            soldierHpLbl.text = "\(0) HP"
            soldierImg.hidden = true
            return true
        }else {
            return false
        }
        }
        
        func orcGameEnds()->Bool {
            if orc.hp <= 0 {
                infoLbl.text = "GameOver, Alexander slays Troll"
                orcHpLbl.text = "\(0) HP"
                orcImg.hidden = true
                return true
            }else {
                return false
            }
        }
        
            

    func restartGame() {
        soldierImg.hidden = false
        orcImg.hidden = false
        viewDidLoad()
    }

}

