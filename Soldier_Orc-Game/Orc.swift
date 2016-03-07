//
//  Orc.swift
//  Soldier_Orc-Game
//
//  Created by Muhammad Ali on 2016-03-06.
//  Copyright © 2016 Muhammad Ali. All rights reserved.
//

import Foundation

class Orc: Character {
    private var _name:String = "The Hulk"
    
    let IMMUNE_MAX = 10
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name:String, hp: Int, attackPwr: Int) {
        self.init(startingHp:hp, attackPwr: attackPwr)
        
        _name = name
    }
    
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        }else {
            return false
        }
    }
    
    
    
    
}