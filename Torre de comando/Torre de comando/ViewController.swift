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
    
    var arrayViews : [UIView] = []
    
    /* **************************************************************************************************
    **
    **  MARK: Views
    **
    ****************************************************************************************************/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundView = UIView(frame: CGRect(x: 0, y: 44, width: 615, height: 630))
        backgroundView.backgroundColor = UIColor.blackColor()
        
        view.addSubview(backgroundView)
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!.character)
                
                view.addSubview(squareView)
                
            }
        }
        
        let centerX = self.view.center.x / 3
        
        let visitedButton = UIButton()
        visitedButton.frame = CGRectMake(0, 0, 120, 40)
        visitedButton.center.y = 720
        visitedButton.center.x = centerX
        visitedButton.setTitle("Visitados", forState: .Normal)
        visitedButton.backgroundColor = UIColor.lightGrayColor()
        visitedButton.addTarget(self, action: "visitedPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(visitedButton)
        
        
        let routeButton = UIButton()
        routeButton.frame = CGRectMake(0, 0, 120, 40)
        routeButton.center.y = 720
        routeButton.center.x = centerX * 2
        routeButton.setTitle("Caminho", forState: .Normal)
        routeButton.backgroundColor = UIColor.lightGrayColor()
        routeButton.addTarget(self, action: "routePressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(routeButton)
        
        let clearButton = UIButton()
        clearButton.frame = CGRectMake(0, 0, 120, 40)
        clearButton.center.y = 720
        clearButton.center.x = centerX * 3
        clearButton.setTitle("Limpar Mapa", forState: .Normal)
        clearButton.backgroundColor = UIColor.lightGrayColor()
        clearButton.addTarget(self, action: "clearPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(clearButton)
        
        
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
        
        arrayViews.removeAll()
        
    }
    
    func visitedPressed() {
        
//        ultimo = (visited.last?.parent)!
//        while ultimo.parent != nil {
//            let squareView = SquareView(line: ultimo.data![0], column: ultimo.data![1], value: matrix[ultimo.data![0], ultimo.data![1]]!)
//            
//            view.addSubview(squareView)
//        }
        
        print("here")
        
        new.removeAll()
        
        new = visited
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
        
    }
    
    func addImages() {
        
        if new.first == nil || (new.first?.data)! == self.fim {
            timer.invalidate()
        }
        else if ((new.first!.data![0] != self.inicio[0]) || (new.first!.data![1] != self.inicio[1])) && ((new.first!.data![0] != self.fim[0]) || (new.first!.data![1] != self.fim[1])) {
            let squareView = SquareView(line: new.first!.data![0], column: new.first!.data![1], value: "v")
            
            self.view.addSubview(squareView)
            
            self.arrayViews.append(squareView)
            
            new.removeFirst()
            
        }
        else {
            new.removeFirst()
        }

    }
    
    func routePressed() {
        
        ultimo = (visited.last?.parent)!
        
        print(matrix[fim[0], fim[1]]?.custo)
        
        var tamCaminho = 0
        var custoCaminho = 0
        
        new.removeAll()
        
        while ultimo.parent != nil {
            
            new.append(ultimo)
            
            if(matrix[ultimo.data![0], ultimo.data![1]]!.character == "M"){
                custoCaminho += 200
            }
            
            if(matrix[ultimo.data![0], ultimo.data![1]]!.character == "R"){
                custoCaminho += 5
            }
            if(matrix[ultimo.data![0], ultimo.data![1]]!.character == "B") {
                custoCaminho += 1
            }
            if(matrix[ultimo.data![0], ultimo.data![1]]!.character == "C") {
                custoCaminho += 50
            }
            else {
                custoCaminho += 1
            }
            
            ultimo = ultimo.parent!
            
            tamCaminho++
        }
        
        print("Tamanho do caminho \(tamCaminho)")
        print("Custo do caminho \(custoCaminho)")
        
        new = new.reverse()
        print(new.count)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "addImages", userInfo: nil, repeats: true)
    }

    
    /* **************************************************************************************************
    **
    **  MARK: Notification Novo Visitado
    **
    ****************************************************************************************************/

//    func novoVisitado_func(notification: NSNotification) {
//        let novo = notification.object as! [Int]
//        if ((novo[0] != inicio[0]) || (novo[1] != inicio[1])) && ((novo[0] != fim[0]) || (novo[1] != fim[1])) {
//            let squareView = SquareView(line: novo[0], column: novo[1], value: "v")
//
//            self.view.addSubview(squareView)
//
//        }
//    }

    
}

