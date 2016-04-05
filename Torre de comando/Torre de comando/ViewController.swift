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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...matrix.lines{
            for j in 0...matrix.columns{
                let squareView = SquareView(line: i, column: j, value: matrix[i, j]!)
                
                view.addSubview(squareView)
                
            }
        }
        
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
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "novoVisitado_func:", name: "novoVisitado", object: nil)
        
        let visited = arvore.treeSearch()
        
        var ultimo = Tree()
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
            
            view.addSubview(squareView)
        }
    }
    
}

