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
    
        FileManager.sharedInstance.readFile()
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
}

