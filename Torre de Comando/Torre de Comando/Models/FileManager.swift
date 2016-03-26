//
//  FileManager.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 16/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Foundation
import AppKit

class FileManager {
    
    private static let file = "mapa"
    
    private init() {
    
    }
    
    static func readFile() -> Matrix2D<Int, Int>? {
        
        if let path = NSBundle.mainBundle().pathForResource(file, ofType:"txt") {
            
            let fileContent = try? NSString(contentsOfFile: path, encoding: NSUTF8StringEncoding)
            
            if(fileContent != nil){
                
                let text = fileContent!
                
                let matrix = Matrix2D<Int, Int>()
                
                matrix.fillMatrix("\(text)")
                
//                matrix.show()
                
                return matrix
                
            } else {
                print("Não consegui ler o arquivo \(file).txt")
            }
            
        } else {
            print("Arquivo \(file).txt não foi encontrado")
        }
        
        return nil
    
    }

    
}
    