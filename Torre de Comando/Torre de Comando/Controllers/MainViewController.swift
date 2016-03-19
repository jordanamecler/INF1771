//
//  MainViewController.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 14/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let matrix = FileManager.readFile()!
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!, viewHeight: view.frame.height)
                
                view.addSubview(squareView)
            }
        }
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

