//
//  SquareView.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 19/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import UIKit

class SquareView: UIView {
    
    var value : Character!
    
    init(line : Int, column : Int, value : Character) {
        
        self.value = value
        
        let height : CGFloat = 10.0
        let width  : CGFloat = 10.0
        
        super.init(frame: CGRect(x: width * CGFloat(column), y: height * CGFloat(line), width: width, height: height))
        
        if(value == "M"){
            self.backgroundColor = UIColor.grayColor()
        } else if value == "." {
            self.backgroundColor = UIColor.whiteColor()
        }
        else if value == "I" {
            self.backgroundColor = UIColor.blueColor()
        }
        else if value == "F" {
            self.backgroundColor = UIColor.greenColor()
        }
        else if value == "R" {
            self.backgroundColor = UIColor.blackColor()
        }
        else if value == "B" {
            self.backgroundColor = UIColor.yellowColor()
        }
        else if value == "C" {
            self.backgroundColor = UIColor.redColor()
        }
        else {
            self.backgroundColor = UIColor.orangeColor()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
