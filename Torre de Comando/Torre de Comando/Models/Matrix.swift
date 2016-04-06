//
//  Matrix.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 16/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Foundation

class Matrix2D<KeyElem:Hashable, Value> {
    
    var _storage:[Int:[Int:MatrixCharacters]] = [:]
    
    var lines : Int = 0
    var columns : Int = 0
    
    subscript(x:Int, y:Int) -> MatrixCharacters? {
        get {
            return _storage[x]?[y]
        }
        set(val) {
            if _storage[x] == nil {
                _storage[x] = [:]
            }
            _storage[x]?[y] = val
        }
    }
    
    func show() {
        
        for i in 0...lines {
            for j in 0...columns {
                if(self[i, j] != nil){
                    print("\(self[i, j]!)", terminator:"")
                }
            }
            print("")
        }
        
    }
    
    func fillMatrix(text : String)  {
        
        for c in text.characters {
            columns++
            if(c == "\n"){
                columns = 0
                lines++
            }
        }
        
        columns--
        
        if(lines == 0 || columns == 0) {
            return
        }
        
        var i = 0
        var j = 0
        
        for c in text.characters {
            if(c == "\n"){
                
                j=0
                i++
                
            } else {
                
                if(self[i, j] == nil){
                    self[i, j] = MatrixCharacters()
                }
                
                self[i, j]!.character = c
                
                j++
            }
        }
        
    }
    
}

