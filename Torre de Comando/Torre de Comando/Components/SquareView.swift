//
//  SquareView.swift
//  Torre de Comando
//
//  Created by Matheus Falcão on 19/03/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import UIKit

class SquareView: UIImageView {
    
    var value : Character!
    
    init(line : Int, column : Int, value : Character, numLines : Int, numColumns : Int) {
        
        self.value = value
        
        let columns = CGFloat(numColumns)
        let height : CGFloat = UIScreen.mainScreen().bounds.width/columns
        let width  : CGFloat = UIScreen.mainScreen().bounds.width/columns
        
//        let moldura : CGFloat = 0.5
        
        super.init(frame: CGRect(x: (width * CGFloat(column)) /*+ moldura*/, y: (height * CGFloat(line))/* + moldura + 44*/, width: width/* - (moldura*2)*/, height: height /*- (moldura*2)*/))
        
        if(value == "M"){
            self.image = UIImage(named: "mountain")
            //self.backgroundColor = UIColor.grayColor()
        } else if value == "." {
            self.backgroundColor = UIColor.whiteColor()
        }
        else if value == "I" {
            self.backgroundColor = UIColor.blueColor()
        }
        else if value == "F" {
            self.image = UIImage(named: "portaAviao")
            //self.backgroundColor = UIColor.greenColor()
        }
        else if value == "R" {
            self.image = UIImage(named: "rocha")
            //self.backgroundColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        }
        else if value == "B" {
            self.backgroundColor = UIColor.yellowColor()
        }
        else if value == "C" {
            self.image = UIImage(named: "tanque")
            //self.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        }
        else {
            self.image = UIImage(named: "airplane")
            //self.backgroundColor = UIColor.orangeColor()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
