//
//  ViewController.swift
//  Torre de comando
//
//  Created by Matheus Falcão on 04/04/16.
//  Copyright © 2016 Matheus e Jordana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* **************************************************************************************************
    **
    **  MARK: Variables desclaration
    **
    ****************************************************************************************************/
    
    var matrix = FileManager.readFile()!
    var inicio = [Int]()
    var fim = [Int]()
    var visited = [Tree]()
    var ultimo = Tree()
    
    var timer = NSTimer();
    var new = [Tree]();
    var new2 = [Tree]();
    
    var arrayViews : [UIImageView] = []
    
    let visitedButton = UIButton()
    let routeButton = UIButton()
    let clearButton = UIButton()
    
    let costLabel = UILabel()
    let sizeLabel = UILabel()
    
    var cost : Double = 0.0
    var size : Int = 0
    
    /* **************************************************************************************************
    **
    **  MARK: Views
    **
    ****************************************************************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let backgroundView = UIView(frame: CGRect(x: 0, y: 44, width: 615, height: 630))
//        backgroundView.backgroundColor = UIColor.blackColor()
//        
//        view.addSubview(backgroundView)
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!.character, numLines: matrix.lines, numColumns: matrix.columns)
                
                view.addSubview(squareView)
                
            }
        }
        
        let centerX = self.view.center.x / 3
        
        visitedButton.frame = CGRectMake(0, 0, 120, 40)
        visitedButton.center.y = 1120
        visitedButton.center.x = centerX
        visitedButton.setTitle("Visitados", forState: .Normal)
        visitedButton.backgroundColor = UIColor.lightGrayColor()
        visitedButton.addTarget(self, action: "visitedPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(visitedButton)
        
        
        routeButton.frame = CGRectMake(0, 0, 120, 40)
        routeButton.center.y = 1120
        routeButton.center.x = centerX * 2
        routeButton.setTitle("Caminho", forState: .Normal)
        routeButton.backgroundColor = UIColor.lightGrayColor()
        routeButton.addTarget(self, action: "routePressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(routeButton)
        
        clearButton.frame = CGRectMake(0, 0, 120, 40)
        clearButton.center.y = 1120
        clearButton.center.x = centerX * 3
        clearButton.setTitle("Limpar Mapa", forState: .Normal)
        clearButton.backgroundColor = UIColor.lightGrayColor()
        clearButton.addTarget(self, action: "clearPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(clearButton)
        
        costLabel.frame = CGRectMake(0, 0, 300, 50)
        costLabel.center.y = 1200
        costLabel.center.x = centerX * 1
        costLabel.font = UIFont(name: costLabel.font!.fontName, size: 20.0)
        costLabel.text = "Custo do caminho: \(cost)"
        self.view.addSubview(costLabel)
        
        sizeLabel.frame = CGRectMake(0, 0, 300, 50)
        sizeLabel.center.y = 1250
        sizeLabel.center.x = centerX * 1
        sizeLabel.font = UIFont(name: costLabel.font!.fontName, size: 20.0)
        sizeLabel.text = "Tamanho do caminho: \(size)"
        self.view.addSubview(sizeLabel)
        
        
        for i in 0...matrix.lines {
            for j in 0...matrix.columns {
                if matrix[i, j]!.character == "I" {
                    inicio.append(i)
                    inicio.append(j)
                }
                if matrix[i, j]!.character == "F" {
                    fim.append(i)
                    fim.append(j)
                }
            }
        }
        
        let arvore = Tree()
        arvore.data = inicio
        arvore.lines = matrix.lines
        arvore.columns = matrix.columns
        arvore.fim = fim
        arvore.matrix = matrix
        
        visited = arvore.treeSearch()
    
        
    }
    
    /* **************************************************************************************************
    **
    **  MARK: Button Action
    **
    ****************************************************************************************************/
    
    func clearPressed() {
        
        for square in arrayViews {
            
            square.removeFromSuperview()
            
        }
        
        cost = 0.0
        size = 0
        
        costLabel.text = "Custo do caminho: \(Double(round(1000*cost)/1000))"
        
        sizeLabel.text = "Tamanho do caminho: \(size)"
        
        arrayViews.removeAll()
        
    }
    
    func addImages() {
        
        visitedButton.enabled = false
        routeButton.enabled = false
        clearButton.enabled = false
        
        if new.first == nil || (new.first?.data)! == self.fim {
            visitedButton.enabled = true
            routeButton.enabled = true
            clearButton.enabled = true
            timer.invalidate()
        }
        else if ((new.first!.data![0] != self.inicio[0]) || (new.first!.data![1] != self.inicio[1])) && ((new.first!.data![0] != self.fim[0]) || (new.first!.data![1] != self.fim[1])) {
            
            let squareView = SquareView(line: new.first!.data![0], column: new.first!.data![1], value: "v", numLines: matrix.lines, numColumns: matrix.columns)
            
            cost += returnCost(new.first!.data![0], coluna: new.first!.data![1])
            
            costLabel.text = "Custo do caminho: \(Double(round(1000*cost)/1000))"
            
            size++
            
            sizeLabel.text = "Tamanho do caminho: \(size)"
            
            self.view.addSubview(squareView)
            
            self.arrayViews.last?.image = UIImage(named: "smoke")
            
            self.arrayViews.append(squareView)
            
            new.removeFirst()
            
        }
        else {
            new.removeFirst()
        }

    }
    
    func visitedPressed() {
        
        clearPressed()
        
        new.removeAll()
        
        new = visited
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
        
    }
    
    func routePressed() {
        
        clearPressed()
        
        ultimo = (visited.last?.parent)!
        
        print("Custo do caminho: \(matrix[fim[0], fim[1]]?.custo)")
        
        var tamCaminho = 0
        var custoCaminho : Double = 0
        
        new.removeAll()
        
        while ultimo.parent != nil {
            
            new.append(ultimo)
            
            custoCaminho += returnCost(ultimo.data![0], coluna: ultimo.data![1])
            
            ultimo = ultimo.parent!
            
            tamCaminho++
        }
        
        print("Tamanho do caminho: \(tamCaminho)")
        
        new = new.reverse()
        print(new.count)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
    }
    
    func returnCost(linha : Int, coluna : Int) -> Double {
        
        let c = matrix[linha, coluna]!.character
        
        switch(c) {
            
            case "M":
                return 200
            
            case "R":
                return 5
            
            case "B":
                return Tree.valorBase(linha, coluna: coluna)
            
            case "C":
                return 50
            
            default:
                return 1
            
        }
        
    }
    
}

