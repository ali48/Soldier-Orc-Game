//
//  Character.swift
//  Soldier_Orc-Game
//
//  Created by Muhammad Ali on 2016-03-06.
//  Copyright © 2016 Muhammad Ali. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 20
    
    
    var hp: Int {
        get {
           return _hp
        }
    }
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            }else {
                return true
            }
        }
    }
  
    func attemptAttack(attackPwr: Int) ->Bool {
        self._hp -= attackPwr
        
        return true
    }
    
    
}