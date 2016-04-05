//
//  ViewController.swift
//  Torre de comando
//
//  Created by Matheus Falcão on 04/04/16.
//  Copyright © 2016 Matheus e Jordana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var matrix = FileManager.readFile()!
    var inicio = [Int]()
    var fim = [Int]()
    var visited = [Tree]()
    var ultimo = Tree()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!)
                
                view.addSubview(squareView)
                
            }
        }
        
        let visitedButton = UIButton()
        visitedButton.frame = CGRectMake(0, 0, 120, 40)
        visitedButton.center.y = self.view.center.y
        visitedButton.frame.origin.x = self.view.center.x - visitedButton.frame.width - 20
        visitedButton.setTitle("Visitados", forState: .Normal)
        visitedButton.backgroundColor = UIColor.lightGrayColor()
        visitedButton.addTarget(self, action: "visitedPressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(visitedButton)
        
        
        let routeButton = UIButton()
        routeButton.frame = CGRectMake(0, 0, 120, 40)
        routeButton.center.y = self.view.center.y
        routeButton.frame.origin.x = self.view.center.x + 20
        routeButton.setTitle("Caminho", forState: .Normal)
        routeButton.backgroundColor = UIColor.lightGrayColor()
        routeButton.addTarget(self, action: "routePressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(routeButton)
        
        
        for i in 0...matrix.lines {
            for j in 0...matrix.columns {
                if matrix[i, j] == "I" {
                    inicio.append(i)
                    inicio.append(j)
                }
                if matrix[i, j] == "F" {
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
    
    func visitedPressed() {
        
//        ultimo = (visited.last?.parent)!
//        while ultimo.parent != nil {
//            let squareView = SquareView(line: ultimo.data![0], column: ultimo.data![1], value: matrix[ultimo.data![0], ultimo.data![1]]!)
//            
//            view.addSubview(squareView)
//        }
        
        for v in visited {
            if ((v.data![0] != inicio[0]) || (v.data![1] != inicio[1])) && ((v.data![0] != fim[0]) || (v.data![1] != fim[1])) {
                let squareView = SquareView(line: v.data![0], column: v.data![1], value: "v")

                self.view.addSubview(squareView)
                
            }
        }
    }
    
    func routePressed() {
        
        ultimo = (visited.last?.parent)!
        
        var tamCaminho = 0
        var custoCaminho = 0
        
        while ultimo.parent != nil {
            
            let squareView = SquareView(line: ultimo.data![0], column: ultimo.data![1], value: "v")
            
            view.addSubview(squareView)
            
            if(matrix[ultimo.data![0], ultimo.data![1]] == "M"){
                custoCaminho += 200
            }
            
            if(matrix[ultimo.data![0], ultimo.data![1]] == "R"){
                custoCaminho += 5
            }
            if(matrix[ultimo.data![0], ultimo.data![1]] == "B") {
                custoCaminho += 1
            }
            if(matrix[ultimo.data![0], ultimo.data![1]] == "C") {
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func novoVisitado_func(notification: NSNotification) {
        let novo = notification.object as! [Int]
        if ((novo[0] != inicio[0]) || (novo[1] != inicio[1])) && ((novo[0] != fim[0]) || (novo[1] != fim[1])) {
            let squareView = SquareView(line: novo[0], column: novo[1], value: "v")

            self.view.addSubview(squareView)

        }
    }
    
    public func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
}

