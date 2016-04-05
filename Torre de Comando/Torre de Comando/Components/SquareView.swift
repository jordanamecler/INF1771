//
//  SquareView.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 19/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Cocoa

class SquareView: NSImageView {

    var value : Character!
    
    init(line : Int, column : Int, value : Character, viewHeight : CGFloat) {
        
        self.value = value
        
        let height : CGFloat = 6.0
        let width  : CGFloat = 6.0
        
        let yPosition = viewHeight - height - (height * CGFloat(line))
        
        super.init(frame: NSRect(x: width * CGFloat(column), y: yPosition, width: width, height: height))
        
        self.wantsLayer = true
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(dirtyRect: NSRect) {
        
        if(value == "M"){
            NSColor.grayColor().setFill()
        } else if value == "." {
            NSColor.whiteColor().setFill()
        }
        else if value == "I" {
            NSColor.blueColor().setFill()
        }
        else if value == "F" {
            NSColor.greenColor().setFill()
        }
        else if value == "R" {
            NSColor.blackColor().setFill()
        }
        else if value == "B" {
            NSColor.yellowColor().setFill()
        }
        else if value == "C" {
            NSColor.redColor().setFill()
        }
        else {
            NSColor.orangeColor().setFill()
        }
        
        NSRectFill(dirtyRect)
        
        super.drawRect(dirtyRect)
    }
    
}
