//
//  Plan.swift
//  Torre de comando
//
//  Created by Matheus Falcão on 09/04/16.
//  Copyright © 2016 Matheus e Jordana. All rights reserved.
//

import Foundation

class Plan {
    
    var energy : Int = 5
    var fire   : Double!
    
    func setFire() -> Double {
        energy--
        return fire
    }
    
}
